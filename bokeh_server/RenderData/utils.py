import numpy as np
from scipy import signal

from SegRead.Seg import SegReader
from bokeh.models import ColumnDataSource


class RenderDataUtils:
    @staticmethod
    def start_render():
        pass

    @staticmethod
    def create_column_data_source(xs, ys):
        return ColumnDataSource(
            dict(
                xs=xs,
                ys=ys,
            )
        )

    @staticmethod
    def insert_zeros_in_trace(trace):
        time = np.arange(len(trace))
        zero_idx = np.where(np.diff(np.signbit(trace)))[0]

        time_at_zero = time[zero_idx] - trace[zero_idx] / np.diff(trace)[zero_idx]
        trace_z = np.insert(trace, zero_idx + 1, 0)
        time_z = np.insert(time, zero_idx + 1, time_at_zero)
        return trace_z, time_z

    @classmethod
    def normalization(cls, traces, time_mass, offsets, sp, dr, normalization_type, patch=False):
        trace_mass = []
        if not patch:
            time_mass = []

        vareas_mass = []

        data = np.zeros((len(traces), len(traces[0])))
        num_of_traces = len(traces)
        for i in range(0, num_of_traces):  # self.num_of_traces):
            data[i] = traces[i]
            # if detrend == 1:
        data = signal.detrend(data)

        for i in range(num_of_traces):
            if normalization_type == "R^2":  # normalization_type == "None":
                new_traces = data[i] * offsets[i] ** 2
            elif normalization_type == "STD":
                new_traces = data[i] / np.std(data[i])
            elif normalization_type == "ARU":
                if i == (sp / dr + 1):
                    new_traces = data[i]
                else:
                    new_traces = data[i] * offsets[i]
            else:  # None
                new_traces = data[i]
            traces_step1, time_step1 = cls.insert_zeros_in_trace(new_traces)

            traces_step11 = traces_step1
            traces_step11[-1] = 0
            traces_step11[0] = 0

            a = np.where(traces_step11 > 0, traces_step11, 0)
            trace_mass.append(traces_step11)
            if not patch:
                time_mass.append(time_step1)
            vareas_mass.append(a)

        return trace_mass, vareas_mass, time_mass
