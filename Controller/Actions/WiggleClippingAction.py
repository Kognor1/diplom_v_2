import os

from PyQt5.QtGui import QIcon
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox

from Controller.BokehTabController import BokehTabController
from Utility.WidgetWrapper import WidgetWrapper


class WiggleClippingAction(QAction):

    def __init__(self, parent, bokeh_tab_controller):
        super().__init__("&Wiggle and Clipping", parent)
        self.setStatusTip("Open Wiggle and Clipping settings")

        self.choose_type = SettingsPlotWidget(bokeh_tab_controller)
        self.triggered.connect(self.open_choose_type_menu)

    def open_choose_type_menu(self):
        self.choose_type.show()


class SettingsPlotWidget(QWidget):
    def __init__(self, bokeh_controller, parent=None):
        super().__init__(parent)
        self.bokeh_controller: BokehTabController = bokeh_controller
        self.setGeometry(300, 300, 300, 300)
        self.vert_layout = QVBoxLayout()
        self.hor_layout = QHBoxLayout()
        wiggle = QPushButton("Wiggle")
        wiggle.clicked.connect(self.wiggle_change)
        clipping = QPushButton("Clipping")
        clipping.clicked.connect(self.clipping_change)
        self.hor_layout.addWidget(wiggle)
        self.hor_layout.addWidget(clipping)
        self.vert_layout.addWidget(WidgetWrapper(self.hor_layout))
        self.vert_layout.addWidget(QWidget(), stretch=80)
        self.setLayout(self.vert_layout)

    def wiggle_change(self):
        for key, value in self.bokeh_controller.open_bokeh_data_tab.items():
            value.widget(0).change_wiggle()

    def clipping_change(self):
        for key, value in self.bokeh_controller.open_bokeh_data_tab.items():
            value.widget(0).change_clipping()