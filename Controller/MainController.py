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

