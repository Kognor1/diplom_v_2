import falcon

from bokeh_server.RenderData.Controller import BokehController


class NormalizationEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        normalization_type = req.params["type"]
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.normalization_plot_unlock(
                normalization_type, key
            )
        resp.json = {"status": "ok"}
