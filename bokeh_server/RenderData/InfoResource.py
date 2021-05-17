import logging
import falcon
from bokeh_server.RenderData.Controller import BokehController
logger = logging.getLogger()


class InfoResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        key = req.params["key"]
        resp.json = {
            "src_x": int(b_conroller.open_main_data_widgets[key].bokeh_html.energy_source),
            "rec_x": b_conroller.open_main_data_widgets[key].bokeh_html.rec_x,
            "filename": b_conroller.open_main_data_widgets[key].bokeh_html.filename,
            "file_path": b_conroller.open_main_data_widgets[key].bokeh_html.file_path,
            "time": b_conroller.open_main_data_widgets[key].bokeh_html.bokeh_data.bin_head["Interval"],
            "traces": b_conroller.open_main_data_widgets[key].bokeh_html.bokeh_data.bin_head["Traces"]
        }
