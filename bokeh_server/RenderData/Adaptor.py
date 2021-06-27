import math
import os
from copy import copy
from functools import partial
from typing import Optional, Dict, List

import numpy as np
import requests
from bokeh.document import without_document_lock
from bokeh.events import DoubleTap, MouseMove, Tap
from bokeh.layouts import column
from bokeh.models import (
    ColumnDataSource,
    Line,
    Cross,
    Slider,
    CheckboxButtonGroup,
    MultiLine,
    Patches,
    CustomJS,
    LinearAxis,
    Grid,
    Div,
    HoverTool,
    WheelZoomTool,
    Toggle,
    PanTool,
    BoxZoomTool,
    Toolbar,
    ResetTool,
    UndoTool,
)
from bokeh.plotting import figure, Figure
from scipy.signal import filtfilt
from bokeh_server.nn_utils.utils import custom_loss1, custom_metric
from bokeh_server.JsCode.js_code import clipping_code
from bokeh_server.RenderData.godografs.Godograf import GodografSettings, Godograf, GodografType
from bokeh_server.RenderData.utils import RenderDataUtils
from bokeh_server.settings import SliderConfig, server_url
from bokeh_server.utils.Settings import SessionSettings

import src


class BokehAdaptor:
    coord_list = []
    coord_list_x = []

    def __init__(self, file):
        self.last_mouse_coord = None
        self.file_path = file
        from bokeh_server.RenderData.Controller import BokehSegyFile

        self._bokeh_data = BokehSegyFile(file)
        self.clipping_value = ColumnDataSource(data=dict(clipping_value=[0.45]))
        self.energy_source = self._bokeh_data.energy_source_point
        self.is_control = False

        self.godograf_settings = GodografSettings()
        _, self.filename = os.path.split(self.file_path)
        self._godografs: Dict[Godograf] = {}
        self.rec_x = 0
        self.sources_points = {}
        self.godograf_current_type = {}
        self.current_source_points: Optional[ColumnDataSource] = None
        self.lines = {}
        self.current_line: Optional[Line] = None
        self.circles = {}
        self.current_circle: Optional[Cross] = None
        self.new_vareas = []  # filter
        self.trace_mass = []  # filter
        self.current_normalization = "STD"
        self.last_added_points_manual = []
        self.last_added_points_semi = []
        self.not_busy_godograf = True
        self.mutual_timing_points = {}
        self.sources_mutual_points = {}
        self.current_mutual_timing_points: Optional[ColumnDataSource] = None
        self.current_mutual_circle: Optional[Cross] = None

    def add_godograf(self, name, godograf):
        self._godografs[name] = godograf

    def hide_godograf(self):
        for i in self._godografs:
            if not i.fixed:
                i.set_visible(False)

    @without_document_lock
    def update_clipping_value_lock(self, current_file_name, new_clipping_value):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.update_clipping_value, new_clipping_value))

    def update_clipping_value(self, new_clipping_value):
        self.clipping_value.data = {"clipping_value": [new_clipping_value]}

    @without_document_lock
    def update_gain_value_lock(self, current_file_name, new_gain_value):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.update_gain_value, new_gain_value))

    def update_gain_value(self, new_gain_value):
        self.gain_slider.value = new_gain_value

    @without_document_lock
    def create_godograf_source_unlock(self, type_godograf, current_file_name, travels_time_name, model_path=None):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(
            partial(self.create_godograf_source, type_godograf, travels_time_name, current_file_name, model_path)
        )

    @without_document_lock
    def change_clipping_unlock(self):
        _, name = os.path.split(self.godograf_settings.current_file_name)
        doc = self.godograf_settings.docs[name]
        doc.add_next_tick_callback(partial(self.change_clipping))

    def change_clipping(self):
        pass

    @without_document_lock
    def normalization_plot_unlock(self, normalization_type, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.normalization_plot, normalization_type))

    @without_document_lock
    def undo_unlock(self, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(self.undo_add_points)

    @without_document_lock
    def disable_filter_unlock(self, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(self.disable_filter)

    def disable_filter(self):
        self._bokeh_data.traces = self._bokeh_data.original_traces
        self.normalization_plot(self.current_normalization, traces=self.bokeh_data.original_traces, patch=False)
        # self._bokeh_data.update_source_copy_p(
        #     self._bokeh_data.vareas_mass, self._bokeh_data.time_mass, self._bokeh_data.Num_of_traces
        # )
        # self._bokeh_data.update_source_copy_l(
        #     self._bokeh_data.trace_mass, self._bokeh_data.time_mass, self._bokeh_data.Num_of_traces
        # )

    @without_document_lock
    def filter_plot_unlock(self, current_file_name, value, type_filter, order=4):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(
            partial(self.filter_plot, type_filter=type_filter, value=float(value), order=float(order))
        )

    def filter_plot(self, type_filter, value, order=4):
        new_traces = []
        b, a = self._bokeh_data.butter_bandpass_filter(
            value=value, type_filter=type_filter, fs=1 / self._bokeh_data.dt, order=order
        )
        for trace in self._bokeh_data.traces:
            y = filtfilt(b, a, trace)
            new_traces.append(y)
        self._bokeh_data.traces = np.asarray(new_traces)
        self.normalization_plot(self.current_normalization, traces=np.asarray(new_traces), patch=True, is_filter=True)

    def normalization_plot(self, normalization_type, traces=None, patch=True, is_filter=False):
        self.current_normalization = normalization_type
        if traces is None:
            traces = self.bokeh_data.traces
        traces_mass, vareas_mass, time_mass = RenderDataUtils.normalization(
            bokeh_data=self.bokeh_data,
            traces=traces,
            time_mass=self.bokeh_data.time_mass,
            sp=self.bokeh_data.sp,
            offsets=self._bokeh_data.offsets,
            dr=self._bokeh_data.dr,
            normalization_type=normalization_type,
            patch=patch,
            is_filter=is_filter,
        )
        self.bokeh_data.time_mass = time_mass
        self.bokeh_data.vareas_mass = vareas_mass
        self.bokeh_data.traces_mass = traces_mass
        if is_filter:
            print("3")
        self._bokeh_data.update_source_copy_p(vareas_mass, time_mass, self._bokeh_data.Num_of_traces)
        self._bokeh_data.update_source_copy_l(traces_mass, time_mass, self._bokeh_data.Num_of_traces)
        # self._bokeh_data.update_source_copy_l(vareas_mass, time_mass, self._bokeh_data.Num_of_traces)
        self.gain_slider.value = 1.0

    @without_document_lock
    def change_godograf_unlock(self, current_file_name, travels_time_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.change_godografs, travels_time_name))

    @without_document_lock
    def change_color_unlock(self, color):
        _, name = os.path.split(self.godograf_settings.current_file_name)
        doc = self.godograf_settings.docs[name]
        doc.add_next_tick_callback(partial(self.change_color, color))

    @without_document_lock
    def press_arrow_up_unlock(self, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.press_arrow_up))

    @without_document_lock
    def press_arrow_down_unlock(self, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.press_arrow_down))

    @without_document_lock
    def press_plus_key_unlock(self, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.press_plus_key))

    @without_document_lock
    def press_minus_key_unlock(self, current_file_name):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.press_minus_key))

    def press_arrow_up(self):
        step = 5
        new_points_y = []
        for i in self.current_source_points.data["y"]:
            min_val = 0
            new_val = i - step
            if min_val < new_val:
                new_points_y.append(i - step)
            else:
                new_points_y = []
                break
        if new_points_y:
            self.current_source_points.data["y"] = new_points_y

    def press_arrow_down(self):
        step = 5
        new_points_y = []
        for i in self.current_source_points.data["y"]:

            max_val = self._bokeh_data.traces.shape[1]
            new_val = i + step
            if max_val > new_val:
                new_points_y.append(i + step)
            else:
                new_points_y = []
                break
        if new_points_y:
            self.current_source_points.data["y"] = new_points_y

    def press_minus_key(self):
        self.gain_slider.value -= (
            SliderConfig.STEP.value * 10 if self.gain_slider.value > SliderConfig.MIN_VALUE.value else 0
        )

    def press_plus_key(self):
        self.gain_slider.value += (
            SliderConfig.STEP.value * 10 if self.gain_slider.value < SliderConfig.MAX_VALUE.value else 0
        )

    def change_color(self, color):
        self.current_line.glyph.line_color = color
        self.current_source_points.data["color"] = [color for i in range(len(self.current_source_points.data["color"]))]
        self.godograf_settings.set_current_godograf_color(color)

    def create_godograf_source(self, type_godograf, travels_name=None, f_name=None, model_path: Optional[str] = None):
        self.godograf_settings.create_or_choise_part_godograf(name=travels_name, f_name=f_name)
        self.godograf_current_type[travels_name] = {"type": type_godograf, "meta": None}
        source_points = ColumnDataSource(data=dict(x=[], y=[], color=["blue"]))

        circle = self.plot.asterisk(source=source_points, x="x", y="y", color="color", size=13, line_width=1.5)
        line: Line = self.plot.line(source=source_points, x="x", y="y", line_width=4, line_alpha=0.3, line_color="red")
        mutual_timing_points = ColumnDataSource(data=dict(x=[], y=[], color=["green"]))
        current_mutual_circle = self.plot.asterisk(
            source=mutual_timing_points, x="x", y="y", color="color", size=13, line_width=1.5
        )
        self.hv.renderers = [circle]
        # if self._godograf_settings.current_travels_name == None:
        #
        if (
                self.godograf_settings.current_travels_name not in self.lines
                and self.godograf_settings.current_travels_name not in self.circles
                and self.godograf_settings.current_travels_name not in self.sources_points
        ):
            self.lines[self.godograf_settings.current_travels_name] = line
            self.circles[self.godograf_settings.current_travels_name] = circle
            self.sources_points[self.godograf_settings.current_travels_name] = source_points
            self.sources_mutual_points[self.godograf_settings.current_travels_name] = mutual_timing_points
            self.mutual_timing_points[self.godograf_settings.current_travels_name] = current_mutual_circle
            self.godograf_settings.all_godografs[self.godograf_settings.current_file_name] = {
                self.godograf_settings.current_travels_name: source_points
            }
            if self.current_circle and self.current_line and self.current_source_points:
                self.change_godografs(self.godograf_settings.current_travels_name, type_godograf)
            else:
                self.current_source_points: ColumnDataSource = source_points
                self.current_circle: Cross = circle
                self.current_line: Line = line
                self.current_mutual_timing_points = mutual_timing_points
                self.current_mutual_circle: Cross = current_mutual_circle
        else:
            self.change_godografs(travels_name, type_godograf)  # self._godograf_settings.current_travels_name
        if type_godograf == GodografType.Automatic:
            self.use_nn_for_godograf(model_path)
            self.godograf_current_type[travels_name] = {"type": GodografType.Manual, "meta": None}
        if type_godograf in (GodografType.STA_LTA, GodografType.Mer, GodografType.Em):
            self.update_automatic_algs_points(type_godograf)
            self.godograf_current_type[travels_name] = {"type": GodografType.Manual, "meta": None}

    def use_nn_for_godograf(self, model_path):
        import tensorflow as tf

        self.not_busy_godograf = False
        self.model = tf.keras.models.load_model(
            model_path, custom_objects={"custom_loss1": custom_loss1, "custom_metric": custom_metric}
        )
        y_pred = self.model.predict(self._bokeh_data.traces)[..., 1].argmax(1)
        for x, y in enumerate(y_pred):
            line_x = x * self._bokeh_data.step
            new_coord = self.put_point(line_x, y)
            self.update_manual_points_rolled(new_coord=new_coord)
        print("ready")
        self.not_busy_godograf = True

    def change_godografs(self, name, type_godograf=GodografType.Manual):
        self.current_line.visible = False
        self.current_circle.visible = False
        self.current_mutual_circle.visible = False

        if not name in self.lines and not name in self.circles and not name in self.sources_points:
            self.create_godograf_source(type_godograf, travels_name=name)
        self.current_line = self.lines[name]
        self.current_circle = self.circles[name]
        self.current_mutual_circle = self.mutual_timing_points[name]

        self.current_source_points = self.sources_points[name]
        self.current_mutual_timing_points = self.sources_mutual_points[name]

        self.current_line.visible = True
        self.current_circle.visible = True
        self.current_mutual_circle.visible = True

    def get_lines_coord(self, x):
        """
            ищет ближайщую линию к точке и возвращает координаты точки на этой линии
        :param x:
        :param y:
        :return:
        """
        diff = math.inf
        index = 0
        for i, value in enumerate(self._bokeh_data.lines):
            if abs(x - value) < diff:
                diff = abs(x - value)
                index = i
        x = index * self._bokeh_data.step
        return x

    def validate_cord(self, x, y):
        if x < 0 or x > self._bokeh_data.lines[-1] or y < 0 or y > np.amax(self._bokeh_data.time_mass[0]):
            return False
        else:
            return True

    def put_point(self, x, y):
        x_coord = self.current_source_points.data["x"]
        y_coord = self.current_source_points.data["y"]
        color = self.current_source_points.data["color"]
        if x not in self.current_source_points.data["x"]:
            # add new point
            x_coord.append(x)
            y_coord.append(y)
            color.append("blue")
        else:
            # recreate point
            del_index = x_coord.index(x)
            del x_coord[del_index]
            del y_coord[del_index]
            x_coord.append(x)
            y_coord.append(y)
            color.append(self.godograf_settings.get_current_godograf().current_color)
        return sorted(zip(x_coord, y_coord, color), key=lambda x_cord: x_cord[0])

    def update_semi_automatic_points(self, x_coord, y_coord, color, new_x, new_y, type_semi="MAX", window=10):
        if len(x_coord) == 0:
            new_coord = self.put_point(new_x, new_y)
            self.update_manual_points_rolled(new_coord)
            self.last_added_points_semi.append([x_coord[0], x_coord[0]])
            return
        # if len(x_coord) == 1:
        #     new_coord = self.put_point(new_x, new_y)
        #     self.update_manual_points_rolled(new_coord)
        #     return
        if new_x >= x_coord[-1]:
            x1 = int(x_coord[-1] / self._bokeh_data.step)
            y1 = int(y_coord[-1])
            x2 = int(new_x / self._bokeh_data.step)
            y2 = int(new_y)
            offset = x1 + 1
            self.last_added_points_semi.append([x_coord[-1], new_x])
        elif new_x <= x_coord[0]:
            x1 = int(new_x / self._bokeh_data.step)  # int(x_coord[0] / self._bokeh_data.step)
            y1 = int(new_y)
            x2 = int(x_coord[0] / self._bokeh_data.step)
            y2 = int(y_coord[0])
            offset = x1
            self.last_added_points_semi.append([x_coord[0], new_x])
            #
        else:
            return

        window = window
        if x1 > x2:
            x1, y1, x2, y2 = x2, y2, x1, y2
        if x1 - x2 == 0:
            k = 0
        else:
            k = (y1 - y2) / (x1 - x2)
        b = y2 - k * x2
        work_traces = self._bokeh_data.traces[x1 + 1: x2 + 1]
        for index, trace in enumerate(work_traces):
            new_y = (x1 + index + 1) * k + b
            start_window = int(new_y - window)
            end_window = int(new_y + window)
            if start_window < 0:
                start_window = 0
            if end_window > self._bokeh_data.traces.shape[1]:
                end_window = self._bokeh_data.traces.shape[1]
            if type_semi == "MAX":
                argmax = np.argmax(trace[start_window:end_window])
                index_new = start_window + argmax
            elif type_semi == "MIN":
                argmin = np.argmin(trace[start_window:end_window])
                index_new = start_window + argmin
            elif type_semi == "+/-":
                need_val = None
                for index_i in range(len(trace[start_window:end_window]) - 1):
                    current = index_i
                    next_i = current + 1
                    next_val = trace[start_window:end_window][next_i]
                    current_val = trace[start_window:end_window][current]
                    if (current_val >= 0) and (next_val <= 0):
                        need_val = index_i
                        break
                if need_val is None:
                    index_new = None
                else:
                    index_new = start_window + need_val
            else:
                need_val = None
                for index_i in range(len(trace[start_window:end_window]) - 1):
                    current = index_i
                    next_i = current + 1
                    next_val = trace[start_window:end_window][next_i]
                    current_val = trace[start_window:end_window][current]
                    if (next_val >= 0) and (current_val <= 0):
                        need_val = index_i
                        break
                if need_val is None:
                    index_new = None
                else:
                    index_new = start_window + need_val
            if index_new is None:
                continue
            x_coord.append((offset + index) * self._bokeh_data.step)
            y_coord.append(index_new)
            color.append("blue")

        new_coord = sorted(zip(x_coord, y_coord, color), key=lambda x_cord: x_cord[0])
        self.update_manual_points_rolled(new_coord)

    def update_manual_points_rolled(self, new_coord):
        x_coord, y_coord, color = map(list, zip(*new_coord))
        self.update_manual_points(x_coord, y_coord, color)

    def update_manual_points(self, x_coord, y_coord, color):
        self.current_source_points.data = dict(x=x_coord, y=y_coord, color=color)

    def check_busy_godograf(self):
        return self.not_busy_godograf

    def semi_automatic_mer(self, traces, start, end):
        traces_prec_MER = traces[start:end].copy()
        padding = 400
        traces_prec_MER = np.hstack((np.random.randn(traces_prec_MER.shape[0], padding) * 0, traces_prec_MER))
        traces_prec_MER = src.dsp.normalize_traces(traces_prec_MER)

        picks_raw_mask_MER = src.dsp.detection_mer(traces_prec_MER, 51, modify=True)
        picks_raw_mask_MER = src.dsp.normalize_traces(picks_raw_mask_MER)
        traces_prec_MER = traces_prec_MER[:, padding:]
        picks_raw_mask_MER = picks_raw_mask_MER[:, padding:]
        picks_raw_MER = picks_raw_mask_MER.argmax(axis=1)
        return picks_raw_MER

    def semi_automatic_sta_lta(self, traces, start, end):
        ###STALTA
        traces_prec_STALTA = traces[start:end].copy()
        padding = 400
        traces_prec_STALTA = np.hstack(
            (np.random.randn(traces_prec_STALTA.shape[0], padding) * 0.000001, traces_prec_STALTA)
        )
        traces_prec_STALTA = src.dsp.normalize_traces(traces_prec_STALTA)

        picks_raw_mask_STALTA = src.dsp.detection_stalta(traces_prec_STALTA, 51, 151, gradient=True)
        picks_raw_mask_STALTA = src.dsp.normalize_traces(picks_raw_mask_STALTA)
        traces_prec_STALTA = traces_prec_STALTA[:, padding:]
        picks_raw_mask_STALTA = picks_raw_mask_STALTA[:, padding:]
        picks_raw_STALTA = picks_raw_mask_STALTA.argmax(axis=1)
        return picks_raw_STALTA

    def semi_automatic_em(self, traces, start, end):
        traces_prec_EM = traces[start:end].copy()
        padding = 400
        traces_prec_EM = np.hstack((np.random.randn(traces_prec_EM.shape[0], padding) * 0.000001, traces_prec_EM))
        traces_prec_EM = src.dsp.normalize_traces(traces_prec_EM)

        picks_raw_mask_EM = src.dsp.detection_em(traces_prec_EM, 31)
        picks_raw_mask_EM = src.dsp.normalize_traces(picks_raw_mask_EM)
        traces_prec_EM = traces_prec_EM[:, padding:]
        picks_raw_mask_EM = picks_raw_mask_EM[:, padding:]
        picks_raw_EM = picks_raw_mask_EM.argmax(axis=1)
        return picks_raw_EM

    @without_document_lock
    def update_manual_points_unlock(self, current_file_name, new_coord):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.update_manual_points_rolled, new_coord))

    def update_automatic_algs_points(self, alg_type):
        if alg_type == GodografType.STA_LTA:
            points = self.semi_automatic_sta_lta(
                traces=self._bokeh_data.traces, start=0, end=len(self._bokeh_data.traces)
            )
        elif alg_type == GodografType.Mer:
            points = self.semi_automatic_mer(traces=self._bokeh_data.traces, start=0, end=len(self._bokeh_data.traces))
        else:
            points = self.semi_automatic_em(traces=self._bokeh_data.traces, start=0, end=len(self._bokeh_data.traces))
        y_coord = []
        color = []
        x_coord = []
        for index, y in enumerate(points):
            y_coord.append(y)
            color.append("blue")
            x_coord.append(index * self._bokeh_data.step)
        new_coord = sorted(zip(x_coord, y_coord, color), key=lambda x_cord: x_cord[0])
        x_coord, y_coord, color = map(list, zip(*new_coord))
        self.current_source_points.data = dict(x=x_coord, y=y_coord, color=color)

    def update_automatic_points(self, new_coord):
        x_coord, y_coord, color = map(list, zip(*new_coord))
        self.current_source_points.data = dict(x=x_coord, y=y_coord, color=color)

    def delete_point_callback(self, event):
        is_picked = SessionSettings().get_picked_by_name(SessionSettings().current_travels)
        if not self.current_source_points:
            self.create_godograf_source(type_godograf=GodografType.Manual)
        if not is_picked:
            return
        if not self.validate_cord(event.x, event.y):
            return
        event.x = int(event.x)
        event.y = int(event.y)
        event.x = self.get_lines_coord(event.x)

        x_coord: List = self.current_source_points.data["x"]
        y_coord = self.current_source_points.data["y"]
        color = self.current_source_points.data["color"]
        if event.x in x_coord:
            index = x_coord.index(event.x)
            del x_coord[index]
            del y_coord[index]
            del color[index]
            self.update_manual_points(x_coord, y_coord, color)

    def create_muting_point_req(self, x, y, en_point):
        if self.bokeh_data.energy_source_point == x:
            return
        requests.get(server_url + "/add_mutual_point", json={"x": x, "y": y, "en_point": en_point})

    def create_point_callback(self, event):
        is_picked = SessionSettings().get_picked_by_name(SessionSettings().current_travels)
        if not self.current_source_points:
            self.create_godograf_source(type_godograf=GodografType.Manual)
        if not is_picked:
            return
        if not self.validate_cord(event.x, event.y):
            return
        event.x = int(event.x)
        event.x = self.get_lines_coord(event.x)

        if self.godograf_current_type[self.godograf_settings.current_travels_name]["type"] == GodografType.Manual:
            self.last_added_points_manual.append(int(event.x))
            new_coord = self.put_point(event.x, event.y)
            self.update_manual_points_rolled(new_coord=new_coord)
            self.create_muting_point_req(event.x, event.y, int(self._bokeh_data.energy_source_point))
        elif (
                self.godograf_current_type[self.godograf_settings.current_travels_name]["type"]
                == GodografType.SemiAutomatic
        ):

            window = int(self.godograf_current_type[self.godograf_settings.current_travels_name]["window"])
            type_semi = self.godograf_current_type[self.godograf_settings.current_travels_name]["meta"]
            self.update_semi_automatic_points(
                x_coord=self.current_source_points.data["x"],
                y_coord=self.current_source_points.data["y"],
                color=self.current_source_points.data["color"],
                new_x=event.x,
                new_y=event.y,
                type_semi=type_semi,
                window=window,
            )
        else:
            return

    @without_document_lock
    def mutual_timing_without_unlock(self, current_file_name, x, y):
        doc = self.godograf_settings.docs[current_file_name]
        doc.add_next_tick_callback(partial(self.add_mutual_timing_point, x, y))

    def add_mutual_timing_point(self, x, y):
        current_data = self.current_mutual_timing_points.data
        if x in current_data["x"]:
            index = current_data["x"].index(x)
            del current_data["x"][index]
            del current_data["y"][index]
            del current_data["color"][index]
        current_data["x"].append(x)
        current_data["y"].append(y)
        current_data["color"].append("green")
        self.current_mutual_timing_points.data = dict(current_data)

    def undo_add_points(self):
        x_coord = list(self.current_source_points.data["x"])
        y_coord = list(self.current_source_points.data["y"])
        color = list(self.current_source_points.data["color"])
        if len(x_coord) == 1:
            del x_coord[0]
            del y_coord[0]
            del color[0]
            self.update_manual_points(x_coord, y_coord, color)
            return
        if self.godograf_current_type[self.godograf_settings.current_travels_name]["type"] == GodografType.Manual:
            last_added_value = self.last_added_points_manual[-1]
            if last_added_value in x_coord:
                index = x_coord.index(last_added_value)
                del x_coord[index]
                del y_coord[index]
                del color[index]
                self.update_manual_points(x_coord, y_coord, color)
            del self.last_added_points_manual[-1]
        elif (
                self.godograf_current_type[self.godograf_settings.current_travels_name]["type"]
                == GodografType.SemiAutomatic
        ):
            prev_added_value, last_added_value = self.last_added_points_semi[-1]
            if last_added_value in x_coord and prev_added_value in x_coord:
                start_index = x_coord.index(prev_added_value)
                end_index = x_coord.index(last_added_value)
                if start_index > end_index:
                    start_index, end_index = end_index - 1, start_index - 1
                del x_coord[start_index + 1: end_index + 1]
                del y_coord[start_index + 1: end_index + 1]
                del color[start_index + 1: end_index + 1]
                self.update_manual_points(x_coord, y_coord, color)
                del self.last_added_points_semi[-1]

    def mouse_callback(self, event):
        self.rec_x = event.x

    def render(self):

        self.plot = Figure(
            title="Seisemogramm",
            plot_width=1600,
            plot_height=960,
            x_range=(self._bokeh_data.first_sou - 5, self._bokeh_data.last_sou + 5),
            output_backend="webgl",
            tools=[],
        )
        self.hv = HoverTool(
            tooltips="""<div>
                            <div>
                                <font face="Arial" size="5">SOU: $x{int}, REC: """
                                    + str(self._bokeh_data.energy_source_point)
                                    + """ T: $y{int} </font>
                            </div>
                            <div>
                    </div>
                     </div>""",
        )
        self.pan = PanTool()

        self.hv.renderers = []

        self.zoom = WheelZoomTool()

        self.box_zoom = BoxZoomTool()
        self.reset_tool = ResetTool()
        tools = (self.zoom, self.box_zoom, self.hv, self.pan, self.reset_tool)
        self.plot.add_tools(*tools)
        self.plot.toolbar.active_drag = self.pan
        self.plot.toolbar.active_scroll = None
        self.plot.toolbar.active_tap = None
        self.plot.toolbar.active_inspect = None
        self.gain_slider = Slider(
            start=SliderConfig.MIN_VALUE.value,
            end=SliderConfig.MAX_VALUE.value,
            value=SliderConfig.START_VALUE.value,
            step=SliderConfig.STEP.value,
            title="Gain",
            default_size=SliderConfig.DEFAULT_SIZE.value,
        )
        self.gain_slider.visible = False
        checkbox_button_group = CheckboxButtonGroup(
            name="checkbox_button_group", labels=["Wiggle", "Clipping"], active=[0, 0, 0], default_size=50
        )

        wheel_button = Toggle(label="WheelZoom", button_type="success", active=True)
        hover_button = Toggle(label="Hover", button_type="danger", active=True)
        cb_wheel = CustomJS(args=dict(button=wheel_button, zoom=self.zoom), code="""zoom.active = button.active""")
        cb_hover = CustomJS(args=dict(button=hover_button, hover=self.hv), code="""hover.active = button.active""")
        wheel_button.js_on_click(cb_wheel)
        hover_button.js_on_click(cb_hover)
        multi_line = MultiLine(xs="xs", ys="ys", line_color="black", line_width=2, name="mult")  # вертикальные
        # полоски

        self.plot.on_event(Tap, self.create_point_callback)
        self.plot.on_event(DoubleTap, self.delete_point_callback)
        # self.current_mutual_timing_points = ColumnDataSource(data=dict(x=[], y=[], color=["green"]))
        # self.current_mutual_circle = self.plot.asterisk(
        #     source=self.current_mutual_timing_points, x="x", y="y", color="color", size=13, line_width=1.5
        # )
        # self.mutual_timing_points[self.godograf_settings.current_travels_name] = self.current_mutual_circle
        # self.plot.on_event(MouseMove, self.mouse_callback)
        self.plot.add_glyph(self._bokeh_data.source_l, multi_line)
        patches = Patches(xs="xs", ys="ys", fill_color="black", line_alpha=0.1)  # закраска
        self.plot.add_glyph(self._bokeh_data.source_p, patches)

        callback = CustomJS(
            args=dict(
                c=self.bokeh_data.step,
                clipping_value=self.clipping_value,
                source_l=self._bokeh_data.source_l,
                source_copy_l=self._bokeh_data.source_copy_l,
                source_p=self._bokeh_data.source_p,
                source_copy_p=self._bokeh_data.source_copy_p,
                gain=self.gain_slider,
                checkbox_button_group=checkbox_button_group,
            ),
            code=clipping_code,
        )

        checkbox_button_group.js_on_click(callback)
        self.gain_slider.js_on_change("value", callback)
        self._bokeh_data.source_copy_p.js_on_change("data", callback)
        self._bokeh_data.source_copy_l.js_on_change("data", callback)

        xaxis = LinearAxis()
        self.plot.add_layout(xaxis, "above")

        yaxis = LinearAxis()
        self.plot.add_layout(yaxis, "right")

        self.plot.add_layout(Grid(dimension=0, ticker=xaxis.ticker))
        self.plot.add_layout(Grid(dimension=1, ticker=yaxis.ticker))

        checkbox_button_group.visible = False

        wheel_button.visible = False
        wheel_button.active = False

        hover_button.visible = False
        self.plot.y_range.flipped = True

        layout1 = column(self.gain_slider, checkbox_button_group, wheel_button, hover_button, self.plot)
        # self.create_godograf_source()
        return layout1

    @property
    def bokeh_data(self):
        return self._bokeh_data


class DataForDoc:
    def __init__(self, plot, patches, multi_line):
        self.plot = plot
        self.patches = patches
        self.multi_line = multi_line
