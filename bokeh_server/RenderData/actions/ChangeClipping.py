import falcon

from bokeh_server.RenderData.Controller import BokehController


class ChangeClippingResource:
    def on_post(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        new_clipping_value = req.json["new_value"]
        new_clipping_value = new_clipping_value.replace(",", ".")
        try:
            new_clipping_value = float(new_clipping_value)
        except Exception as e:
            print(e)
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.update_clipping_value_lock(key, new_clipping_value)
        resp.json = {"status": "ok"}
