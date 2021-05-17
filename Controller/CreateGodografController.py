import requests
from PyQt5.QtCore import QObject

from bokeh_server.settings import server_url


class CreateGodografController(QObject):
    def __init__(self):
        super().__init__()

    @staticmethod
    def start_godograf_event(god_type, travels_time_name, model_path=None):
        res = requests.get(
            server_url + "/start_godograf_event",
            json={"type_godograf": god_type, "travels_time_name": travels_time_name,
                  "model_path": model_path},
        )
        return res.json()

    @staticmethod
    def end_event_godograf():
        res = requests.get(server_url + "/end_godograf_event")
        return res.json()
