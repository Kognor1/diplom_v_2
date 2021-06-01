import os
from typing import Optional

import numpy as np
from bokeh.application import Application
from scipy import signal
from scipy.signal import filtfilt, butter

from SegRead.Seg import SegReader
from bokeh_server.RenderData.Adaptor import BokehAdaptor
from bokeh_server.RenderData.BokehApplication import BokehApplication
from bokeh_server.RenderData.BokehWorker import BokehWorker
from bokeh_server.RenderData.DataBaseHandler import DatabaseHandler
from bokeh_server.settings import bokeh_port
from bokeh_server.utils.SingletonMeta import SingletonMeta
from bokeh_server.RenderData.utils import RenderDataUtils
from bokeh_server.utils.db import FilterType


class BokehSegyFile:
    def __init__(self, file):
        self.file = file
        self.segy_reader = SegReader()
        self.segy_reader.open(self.file)

        self.traces, self.bin_head, self.trace_head = self.segy_reader.read_all()
        self.original_traces = self.traces
        try:
            self.energy_source_point = self.trace_head["EnergySourcePoint"][0]
        except Exception as e:
            print(e)
            self.energy_source_point = 0
        self.vareas_mass = []
        self.trace_mass = []
        self.time_mass = []
        self.offsets = self.trace_head["offset"]
        self.dr = abs(self.offsets[1] - self.offsets[2])
        self.step = (abs(self.offsets[len(self.offsets) - 1]) + abs(self.offsets[0])) / (len(self.offsets) - 1)
        self.last_sou = len(self.traces) * self.step
        self.first_sou = 0
        self.dt = self.bin_head["Interval"] * 10 ** -6
        self.Num_of_traces = len(self.traces)
        self.sp = self.bin_head["ReelNumber"]
        self.lines = []
        self.prepare_data()

    def butter_low(self, lowcut, fs, order=5):
        nyq = 0.5 * fs
        low = lowcut / nyq
        b, a = butter(order, low, btype='low', analog=False)
        return b, a

    def butter_high(self, highcut, fs, order=5):
        nyq = 0.5 * fs
        high = highcut / nyq
        b, a = butter(order, high, btype='high', analog=False)
        return b, a

    def butter_bandpass_filter(self, value, type_filter, fs, order=5):
        if type_filter == FilterType.low:
            b, a = self.butter_low(value, fs, order=order)
        else:
            b, a = self.butter_high(value, fs, order=order)
        return b, a

    def insert_zeros_in_trace(self, trace):
        time = np.arange(len(trace))
        zero_idx = np.where(np.diff(np.signbit(trace)))[0]

        time_at_zero = time[zero_idx] - trace[zero_idx] / np.diff(trace)[zero_idx]
        trace_z = np.insert(trace, zero_idx + 1, 0)
        time_z = np.insert(time, zero_idx + 1, time_at_zero)
        return trace_z, time_z

    def normalization(self, normalization_type, patch=False):
        self.trace_mass = []
        if not patch:
            self.time_mass = []

        self.vareas_mass = []

        data = np.zeros((len(self.traces), len(self.traces[0])))

        for i in range(0, self.Num_of_traces):
            data[i] = self.traces[i]
            # if detrend == 1:
        data = signal.detrend(data)
        for i in range(self.Num_of_traces):
            if normalization_type == "R^2":  # normalization_type == "None":
                new_traces = data[i] * self.offsets[i] ** 2
            elif normalization_type == "STD":
                new_traces = data[i] / np.std(data[i])
            elif normalization_type == "R":
                if i == (self.sp / self.dr + 1):
                    new_traces = data[i]
                else:
                    new_traces = data[i] * self.offsets[i]
            else:  # None
                new_traces = data[i]
            Vareas = np.where(new_traces > 0, new_traces, 0)
            Traces_step1, Time_step1 = self.insert_zeros_in_trace(new_traces)

            Traces_step11 = Traces_step1
            Traces_step11[-1] = 0
            Traces_step11[0] = 0

            a = np.where(Traces_step11 > 0, Traces_step11, 0)
            self.trace_mass.append(Traces_step11)
            if not patch:
                self.time_mass.append(Time_step1)
            self.vareas_mass.append(a)

        return self.trace_mass, self.vareas_mass, self.time_mass

    def prepare_data(self):

        self.lines = [i * self.step for i in range(self.Num_of_traces)]

        self.trace_mass, self.vareas_mass, self.time_mass = RenderDataUtils.normalization(
            traces=self.traces,
            time_mass=self.time_mass,
            offsets=self.offsets,
            sp=self.sp,
            dr=self.dr,
            normalization_type="STD",
        )

        self.source_l = RenderDataUtils.create_column_data_source(
            xs=[self.trace_mass[i] + self.step * i for i in range(self.Num_of_traces)],
            ys=[self.time_mass[i] for i in range(self.Num_of_traces)],
        )

        self.source_copy_l = RenderDataUtils.create_column_data_source(
            xs=[self.trace_mass[i] + self.step * i for i in range(self.Num_of_traces)],
            ys=[self.time_mass[i] for i in range(self.Num_of_traces)],
        )
        self.source_p = RenderDataUtils.create_column_data_source(
            xs=[self.vareas_mass[i] + self.step * i for i in range(self.Num_of_traces)],
            ys=[self.time_mass[i] for i in range(self.Num_of_traces)],
        )
        self.source_copy_p = RenderDataUtils.create_column_data_source(
            xs=[self.vareas_mass[i] + self.step * i for i in range(self.Num_of_traces)],
            ys=[self.time_mass[i] for i in range(self.Num_of_traces)],
        )

    def update_source_copy_p(self, vareas_mass, time_mass, num_of_traces):

        self.source_copy_p.data = {
            "xs": np.array([vareas_mass[i] + self.step * i for i in range(num_of_traces)]),
            "ys": np.array([time_mass[i] for i in range(num_of_traces)]),
        }

    def update_source_copy_l(self, trace_mass, time_mass, num_of_traces):
        a = np.array([trace_mass[i] + self.step * i for i in range(self.Num_of_traces)])
        self.source_copy_l.data = {
            "xs": np.array([trace_mass[i] + self.step * i for i in range(self.Num_of_traces)]),
            "ys": np.array([time_mass[i] for i in range(num_of_traces)]),
        }


class BokehController(metaclass=SingletonMeta):
    def __init__(self):
        self.open_main_data_widgets = {}
        self.curren_main_data_widget: Optional[BokehApplication] = None

    def create_application(self, filename):
        _, name = os.path.split(filename)
        bokeh_html: BokehAdaptor = BokehAdaptor(filename)
        plot = bokeh_html.render()
        app = Application(DatabaseHandler(plot, name))
        self.open_main_data_widgets[name] = BokehApplication(app, bokeh_html, plot, filename)
        self.curren_main_data_widget = self.open_main_data_widgets[name]
        return self.open_main_data_widgets[name]

    def start_applications(self):
        apps = []
        for i in self.open_main_data_widgets.values():
            apps.append(i)
        start_widget = next(iter(self.open_main_data_widgets.values()))
        self.bokeh_worker = BokehWorker(apps)
        self.bokeh_worker.start()
        self.curren_main_data_widget = start_widget
        app_path = {}
        for i in apps:
            app_path[i.app.handlers[0].name] = f"http://127.0.0.1:{bokeh_port}/" + i.app.handlers[0].name.split(".")[0]
        return app_path
