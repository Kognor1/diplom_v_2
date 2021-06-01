import falcon

from bokeh_server.RenderData.Controller import BokehController


class ChangeGainResource:
    def on_post(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        new_gain_value = req.json["new_value"]
        new_gain_value = new_gain_value.replace(",", ".")
        try:
            new_gain_value = float(new_gain_value)
        except Exception as e:
            print(e)
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.update_gain_value_lock(key, new_gain_value)
        resp.json = {"status": "ok"}
