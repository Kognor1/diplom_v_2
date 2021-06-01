import math
import os

import requests
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QIcon, QIntValidator, QDoubleValidator
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox, QLineEdit, QLabel, \
    QSlider

from Controller.BokehTabController import BokehTabController
from Utility.WidgetWrapper import WidgetWrapper
from View.DoubleSlider import DoubleSlider
from bokeh_server.settings import server_url, SliderConfig


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
        self.slider = DoubleSlider(Qt.Horizontal)

        self.slider.setMinimum(SliderConfig.MIN_VALUE.value)
        self.slider.setMaximum(SliderConfig.MAX_VALUE.value)
        self.slider.setValue(SliderConfig.START_VALUE.value)
        self.slider.setSingleStep(SliderConfig.STEP.value)
        self.slider.valueChanged.connect(self.change_slider)
        self.gain_label = QLabel("Gain: 1.0")
        button = QPushButton("Reset Gain")
        button.clicked.connect(lambda: self.slider.setValue(1.0))
        clipping = QPushButton("Clipping")
        clipping.clicked.connect(self.clipping_change)
        clipping_value, self.clipping_value = self.create_input_field("")
        self.clipping_value.setText("0,45")
        self.hor_layout.addWidget(wiggle)
        self.hor_layout.addWidget(clipping)
        self.vert_layout.addWidget(WidgetWrapper(self.hor_layout))
        self.vert_layout.addWidget(self.clipping_value)
        self.vert_layout.addWidget(self.slider)
        self.vert_layout.addWidget(self.gain_label)
        self.vert_layout.addWidget(button)
        self.vert_layout.addWidget(QWidget(), stretch=80)

        self.setLayout(self.vert_layout)

    def wiggle_change(self):
        for key, value in self.bokeh_controller.open_bokeh_data_tab.items():
            value.widget(0).change_wiggle()

    def clipping_change(self):
        if not self.clipping_value.text():
            self.clipping_value.setText("0.45")
        req = requests.post(server_url + "/set_clipping_value", json={"new_value": self.clipping_value.text()})
        for key, value in self.bokeh_controller.open_bokeh_data_tab.items():
            value.widget(0).change_clipping()

    def change_slider(self):
        req = requests.post(server_url + "/set_new_gain", json={"new_value": str(self.slider.value())})
        self.gain_label.setText(f"Gain: {round(self.slider.value(), 3)}")

    @staticmethod
    def create_input_field(text):
        hbox = QHBoxLayout()
        input_field = QLineEdit()
        label = QLabel(text, input_field)
        label.setAlignment(Qt.AlignCenter)
        input_field.setValidator(QDoubleValidator())
        hbox.addWidget(label)
        hbox.addWidget(input_field)
        return hbox, input_field
