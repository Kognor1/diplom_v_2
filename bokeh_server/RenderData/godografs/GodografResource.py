import falcon

from bokeh_server.RenderData.Controller import BokehController
from bokeh_server.RenderData.godografs.Godograf import GodografSettings, GodografType
from bokeh_server.utils.Settings import SessionSettings


class StartGodografEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        type_godograf = req.json["type_godograf"]
        travels_time_name = req.json["travels_time_name"]
        model_path = req.json["model_path"]
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.create_godograf_source_unlock(
                type_godograf, key, travels_time_name, model_path
            )
        SessionSettings().update_travels_settings(travels_time_name, True)
        resp.json = {"status": "ok"}


class StartGodografItemEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response, name: str):
        b_conroller = BokehController()
        type_godograf = req.json["type_godograf"]
        travels_time_name = req.json["travels_time_name"]
        model_path = req.json["model_path"]
        # name = req.json["name"]
        b_conroller.open_main_data_widgets[name].bokeh_html.create_godograf_source_unlock(
            type_godograf, name, travels_time_name, model_path)
        SessionSettings().update_travels_settings(travels_time_name, True)
        resp.json = {"status": "ok"}


class EndGodografEventResource:
    def on_get(self, _: falcon.Request, resp: falcon.Response):
        pass


class ChangeGodografEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()

        cell_name = req.json["cell_name"]
        for key, value in b_conroller.open_main_data_widgets.items():
            b_conroller.open_main_data_widgets[key].bokeh_html.change_godograf_unlock(key, cell_name)
            b_conroller.open_main_data_widgets[key].bokeh_html.godograf_settings.current_travels_name = cell_name
        SessionSettings().update_travels_settings(cell_name)
        resp.json = {"status": "ok"}


class DownloadGodografEventResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        cell_name = req.json["cell_name"]
        res = self.save_godograf(cell_name, b_conroller)
        resp.json = res

    def save_godograf(self, godograf_name, b_conroller):
        res = {godograf_name: []}
        for key, value in b_conroller.open_main_data_widgets.items():
            if godograf_name in b_conroller.open_main_data_widgets[key].bokeh_html.sources_points:
                a = b_conroller.open_main_data_widgets[key].bokeh_html.sources_points[godograf_name]
                energy_source = b_conroller.open_main_data_widgets[key].bokeh_html.energy_source
                for i in zip(a.data["x"], a.data["y"]):
                    res[godograf_name].append(str(energy_source) + ", " + str(i[0]) + ", " + str(i[1]) + "\n")
        return res


class LoadGodografResource:
    def on_get(self, req: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        godograf_data = req.json["godograf_data"]
        file_name = req.json["file_name"]
        res = self.load_from_data_godograf(godograf_data, file_name, b_conroller)
        resp.json = res

    @classmethod
    def load_from_data_godograf(cls, godograf_data, file_name, b_conroller):
        for row in godograf_data:
            energy_source, src_x, time = row.split(",")
            for key, value in b_conroller.open_main_data_widgets.items():
                if b_conroller.open_main_data_widgets[key].bokeh_html.energy_source == int(energy_source):
                    new_coord = b_conroller.open_main_data_widgets[key].bokeh_html.put_point(
                        float(src_x.replace(" ", "")), float(time.replace(" ", ""))
                    )
                    b_conroller.open_main_data_widgets[key].bokeh_html.update_manual_points_unlock(
                        key, new_coord=new_coord
                    )
        return "ok"
