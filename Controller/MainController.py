from multiprocessing.context import Process

import requests
from PyQt5.QtCore import QEvent, Qt, QObject
from PyQt5.QtGui import QKeyEvent

from Model.MainModel import MainModel
from bokeh_server.settings import server_url


class MainController(QObject):
    def __init__(self, model: MainModel):
        super().__init__()
        self.bokeh_process = None
        self._model = model

    def set_bokeh_process(self, p: Process):
        self.bokeh_process = p

    @classmethod
    def start_bokeh(cls):
        from bokeh_server.bokeh_server_main import bokeh_main
        p = Process(target=bokeh_main, args=())
        p.start()
        return p

    @classmethod
    def stop_bokeh(cls, p: Process):
        p.terminate()
        # p.join()

    def eventFilter(self, obj, event):
        if event.type() == QEvent.KeyPress:
            key = QKeyEvent(event).key()
            if Qt.Key_Up == key:
                self.press_arrow_up_key()
                return True
            elif Qt.Key_Down == key:
                self.press_arrow_down_key()
                return True
            elif Qt.Key_Minus == key:
                self.press_minus_key()
                return True
            elif Qt.Key_Plus == key:
                self.press_plus_key()
                return True
        return False

    def press_plus_key(self):
        res = requests.get(server_url + "/change_gain",
                           params={"type": "plus", "key": self._model.current_cell_name})

    def press_minus_key(self):
        res = requests.get(server_url + "/change_gain",
                           params={"type": "minus", "key": self._model.current_cell_name})

    def press_arrow_up_key(self):
        res = requests.get(server_url + "/change_height",
                           params={"type": "up", "key": self._model.current_cell_name})

    def press_arrow_down_key(self):
        res = requests.get(server_url + "/change_height",
                           params={"type": "down", "key": self._model.current_cell_name})
