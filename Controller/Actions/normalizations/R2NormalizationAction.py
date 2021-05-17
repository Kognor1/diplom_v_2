
import os

import requests
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox, QLabel

from Controller.BokehTabController import BokehTabController
from Utility.WidgetWrapper import WidgetWrapper
from bokeh_server.settings import server_url


class R2NormalizationAction(QAction):

    def __init__(self, parent, bokeh_tab_controller):
        super().__init__("&R^2", parent)
        self.setStatusTip("Open Normalization settings")
        self._type = "R^2"
        self._bokeh_tab_controller = bokeh_tab_controller
        self.triggered.connect(self.set_normalization)

    def set_normalization(self):
        res = requests.get(server_url + "/set_normalization", params={"type": self._type})
        return res.json()
    # self.bokeh_tab_controller.bokeh_html.normalization_plot_unlock(
    #     normalization_type=norm_type)
