import os

import requests
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox, QLabel

from Controller.BokehTabController import BokehTabController
from Utility.WidgetWrapper import WidgetWrapper
from bokeh_server.settings import server_url


class NoneNormalizationAction(QAction):

    def __init__(self, parent, bokeh_tab_controller):
        super().__init__("&None", parent)
        self._type = "None"
        self.setStatusTip("Open Normalization settings")

        self.triggered.connect(self.set_normalization)

    def set_normalization(self):
        res = requests.get(server_url + "/set_normalization", params={"type": self._type})
        return res.json()
