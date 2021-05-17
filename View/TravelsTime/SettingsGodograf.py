import requests
from PyQt5.QtGui import QIntValidator
from PyQt5.QtWidgets import QWidget, QVBoxLayout, QComboBox, QPushButton, QHBoxLayout, QLineEdit, QLabel

from Utility.WidgetWrapper import WidgetWrapper
from bokeh_server.settings import server_url
from bokeh_server.utils.db import GodografType


class SettingsGodograf(QWidget):
    def __init__(self, godograf_name):
        super().__init__()
        self.godograf_name = godograf_name
        self.v_layout = QVBoxLayout()
        self.type_godograf = QComboBox()
        self.type_godograf.addItem(GodografType.Manual)
        self.type_godograf.addItem(GodografType.SemiAutomatic)
        self.type_godograf.currentIndexChanged.connect(
            self.type_godograf_change)
        self.ok_button = QPushButton("Ok")
        self.ok_button.clicked.connect(self.ok_button_click)
        self.type_semi_automatic = QComboBox()
        self.type_semi_automatic.addItem("MAX")
        self.type_semi_automatic.addItem("MIN")
        self.type_semi_automatic.addItem("+/-")

        self.window_layout = QHBoxLayout()
        self.window_line_edit = QLineEdit()
        self.window_label = QLabel("Window Size")
        self.window_line_edit.setValidator(QIntValidator(self))
        self.window_layout.addWidget(self.window_label)
        self.window_layout.addWidget(self.window_line_edit)
        # self.window_start_layout.setEnabled(False)

        self.type_semi_automatic.setEnabled(False)
        self.v_layout.addWidget(self.type_godograf)
        self.v_layout.addWidget(self.type_semi_automatic)
        self.v_layout.addWidget(WidgetWrapper(self.window_layout))
        self.v_layout.addWidget(self.ok_button)
        self.setLayout(self.v_layout)

    def ok_button_click(self):
        if self.type_semi_automatic.isEnabled():
            type_semi_automatic = self.type_semi_automatic.currentText()
            window = self.window_line_edit.text()
        else:
            type_semi_automatic = None
            window = None
        self.change_godograf_type(self.godograf_name, self.type_godograf.currentText(),
                                  type_semi_automatic, window=window)
        self.close()

    def change_godograf_type(self, godograf_name, godograf_type, type_semi_automatic=None, window=None):
        requests.get(server_url + "/change_type_godograf",
                     params={"godograf_name": godograf_name, "godograf_type": godograf_type,
                             "type_semi_automatic": type_semi_automatic, "window": window})

    def type_godograf_change(self):
        current_type = self.type_godograf.currentText()
        if current_type == GodografType.SemiAutomatic:
            self.type_semi_automatic.setEnabled(True)
            self.window_label.setEnabled(True)
        else:
            self.type_semi_automatic.setEnabled(False)
            self.window_label.setEnabled(False)
