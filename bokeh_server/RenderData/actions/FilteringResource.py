import falcon

from bokeh_server.RenderData.Controller import BokehController


class FilterEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        filter_type = req.params["type"]
        filter_value = req.params["value"]
        filter_order = req.params["order"]
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.filter_plot_unlock(
                key, filter_value, filter_type, order=filter_order
            )
        resp.json = {"status": "ok"}


class DisableFilterEventResource:
    def on_get(self, _: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.disable_filter_unlock(key)
        resp.json = {"status": "ok"}
