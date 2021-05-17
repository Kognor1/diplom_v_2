import falcon

from bokeh_server.RenderData.Controller import BokehController
from bokeh_server.RenderData.godografs.Godograf import GodografSettings


class ChangeGainEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        gain_hange_type = req.params["type"]
        key = req.params["key"]
        if gain_hange_type == "plus":
            b_conroller.open_main_data_widgets[key].bokeh_html.press_plus_key_unlock(key)
        else:
            b_conroller.open_main_data_widgets[key].bokeh_html.press_minus_key_unlock(key)
        resp.json = {"status": "ok"}


class ChangeHeightEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        height_hange_type = req.params["type"]
        key = req.params["key"]
        if height_hange_type == "up":
            b_conroller.open_main_data_widgets[key].bokeh_html.press_arrow_up_unlock(key)
        else:
            b_conroller.open_main_data_widgets[key].bokeh_html.press_arrow_down_unlock(key)
        resp.json = {"status": "ok"}


class ChangeTypeGodografEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        godograf_name = req.params["godograf_name"]
        godograf_type = req.params["godograf_type"]
        type_semi_automatic = req.params["type_semi_automatic"] if "type_semi_automatic" in req.params else None
        window = req.params["window"]
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.godograf_current_type[godograf_name] = {
                "type": godograf_type,
                "meta": type_semi_automatic,
                "window": window}
        resp.json = {"status": "ok"}
