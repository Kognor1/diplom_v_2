import os

import requests
from PyQt5.QtCore import QObject

from Controller.CreateGodografController import CreateGodografController
from bokeh_server.settings import server_url
from bokeh_server.utils.db import GodografType


class TravelsTimeController(QObject):
    def __init__(self, model):
        super().__init__()
        self.current_godograf = None

    def change_cell(self, cell_name, file_name):
        self.current_godograf = cell_name
        res = requests.get(
            server_url + "/change_godograf_event",
            json={"file_name": file_name, "cell_name": cell_name},
        )
        return res.json()

    @classmethod
    def get_godograf(cls, cell_name):
        res = requests.get(
            server_url + "/download_godograf_event",
            json={"cell_name": cell_name},
        )
        return res.json()

    @classmethod
    def load_godograf(cls, godograf_data, file_name):
        CreateGodografController.start_godograf_event(god_type=GodografType.Manual,
                                                      model_path=None,
                                                      travels_time_name=file_name
                                                      )
        res = requests.get(
            server_url + "/load_godograf_event",
            json={"godograf_data": godograf_data,
                  "file_name": file_name},
        )
        return res.json()

    def local_save_godofraf(self, cell_name, full_path):
        godograf_data = self.get_godograf(cell_name)
        with open(full_path, "w")as file:
            for row in godograf_data[cell_name]:
                file.write(row)

    def local_load_godograf(self, file_path):
        _, file_name = os.path.split(file_path)
        with open(file_path, "r") as file:
            godograf_data = file.read().split("\n")
            self.load_godograf(godograf_data[0:-1], file_name)
