import os

import requests
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox, QLabel

from Controller.BokehTabController import BokehTabController
from Utility.WidgetWrapper import WidgetWrapper
from bokeh_server.settings import server_url


class StdNormalizationAction(QAction):

    def __init__(self, parent, wiggle_clipping):
        super().__init__("&STD", parent)
        self._type = "STD"
        self.wiggle_clippping = wiggle_clipping
        self.setStatusTip("Open Normalization settings")
        self.triggered.connect(self.set_normalization)

    def set_normalization(self):
        self.wiggle_clippping.choose_type.slider.setValue(1.0)
        res = requests.get(server_url + "/set_normalization", params={"type": self._type})
        return res.json()
