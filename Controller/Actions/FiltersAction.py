import requests
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QIntValidator
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox, QLabel, QLineEdit, \
    QCheckBox

from Controller.BokehTabController import BokehTabController
from Utility.WidgetWrapper import WidgetWrapper
from bokeh_server.settings import server_url
from bokeh_server.utils.db import FilterType


class FilterAction(QAction):

    def __init__(self, parent, bokeh_tab_controller):
        super().__init__("&Filters", parent)
        self.setStatusTip("Open Filters settings")

        self.choose_type = SettingsPlotWidget(bokeh_tab_controller)
        self.triggered.connect(self.open_choose_type_menu)

    def open_choose_type_menu(self):
        self.choose_type.show()


class SettingsPlotWidget(QWidget):
    def __init__(self, bokeh_tab_controller, parent=None):
        super().__init__(parent)
        self.bokeh_tab_controller: BokehTabController = bokeh_tab_controller
        self.setGeometry(300, 300, 300, 300)
        self.vert_layout = QVBoxLayout()
        self.hor_layout = QHBoxLayout()
        self.vert_layout.addWidget(WidgetWrapper(self.create_filtering_block()))
        ok_button = QPushButton("Ok")
        ok_button.clicked.connect(self.ok_clicked)
        self.vert_layout.addWidget(ok_button)
        self.vert_layout.addWidget(QWidget(), stretch=90)
        self.type = QComboBox()
        self.setLayout(self.vert_layout)

    def ok_clicked(self):
        self.close()

    def create_normalization_block(self):
        vbox = QVBoxLayout()
        label_norm = QLabel("Normalization", )
        label_norm.setStyleSheet("font-size:23px;")
        label_norm.setAlignment(Qt.AlignCenter)
        label_type = QLabel("Type")

        label_type.setAlignment(Qt.AlignCenter)
        self.qc_normalization = QComboBox()
        self.qc_normalization.addItem("STD")
        self.qc_normalization.addItem("ARU")
        self.qc_normalization.addItem("R^2")
        self.qc_normalization.addItem("None")
        self.qc_normalization.currentIndexChanged.connect(
            self.choose_normalization)
        type_layout = QHBoxLayout()
        type_layout.addWidget(label_type)
        type_layout.addWidget(self.qc_normalization)
        vbox.addWidget(label_norm)
        vbox.addWidget(WidgetWrapper(type_layout))

        return vbox

    def create_filtering_block(self):
        vbox = QVBoxLayout()
        label_filter = QLabel("Filters")
        label_filter.setStyleSheet("font-size:23px;")
        label_filter.setAlignment(Qt.AlignCenter)

        vbox.addWidget(label_filter)
        vbox.addWidget(WidgetWrapper(self.create_low_pass_filter()))
        vbox.addWidget(WidgetWrapper(self.create_hight_pass_filter()))
        hbox = QHBoxLayout()
        self.set_default_line_edit()

        vbox.addWidget(WidgetWrapper(hbox))
        return vbox

    def set_default_line_edit(self):
        self.low_value.setText("10")
        self.hight_value.setText("100")
        self.order_value_low.setText("4")
        self.order_value_hight.setText("4")

    @staticmethod
    def create_input_field(text):
        hbox = QHBoxLayout()
        input_field = QLineEdit()
        label = QLabel(text, input_field)
        label.setAlignment(Qt.AlignCenter)
        input_field.setValidator(QIntValidator(-1000, 1000))
        hbox.addWidget(label)
        hbox.addWidget(input_field)
        return hbox, input_field

    def apply_low_filter(self):
        is_true = self.low_pass_checkbox.isChecked()
        if is_true:
            low = self.low_value.text()
            order = self.order_value_low.text()
            res = requests.get(server_url + "/applay_filter",
                               params={"type": FilterType.low, "order": order, "value": low})
        else:
            res = requests.get(server_url + "/disable_filter", )
            self.hight_pass_checkbox.setChecked(False)

        return res.json()

    def apply_hight_filter(self):
        is_true = self.hight_pass_checkbox.isChecked()
        if is_true:
            high = self.hight_value.text()
            order = self.order_value_hight.text()
            res = requests.get(server_url + "/applay_filter",
                               params={"type": FilterType.high, "order": order, "value": high})
        else:
            res = requests.get(server_url + "/disable_filter", )
            self.low_pass_checkbox.setChecked(False)

    def create_low_pass_filter(self):
        low_pass_block = QVBoxLayout()
        low_pass_filter_name = QHBoxLayout()

        low_pass_filter_label = QLabel("Low pass filter")
        low_pass_filter_label.setStyleSheet("font-size:18px;")
        low_pass_filter_label.setAlignment(Qt.AlignCenter)

        self.low_pass_checkbox = QCheckBox()
        self.low_pass_checkbox.clicked.connect(self.apply_low_filter)
        low_pass_filter_name.addWidget(self.low_pass_checkbox, stretch=10)
        low_pass_filter_name.addWidget(low_pass_filter_label, stretch=30)
        low_pass_filter_name.addWidget(QWidget(), stretch=60)

        low, self.low_value = self.create_input_field("HZ")
        order, self.order_value_low = self.create_input_field("Order")
        hbox_value = QHBoxLayout()
        hbox_value.addWidget(WidgetWrapper(low))
        hbox_value.addWidget(WidgetWrapper(order))
        low_pass_block.addWidget(WidgetWrapper(low_pass_filter_name), stretch=10)
        low_pass_block.addWidget(WidgetWrapper(hbox_value), stretch=10)
        low_pass_block.addWidget(QWidget(), stretch=80)
        return low_pass_block

    def create_hight_pass_filter(self):
        hight_pass_block = QVBoxLayout()
        hight_pass_filter_name = QHBoxLayout()

        hight_pass_filter_label = QLabel("High pass filter")
        hight_pass_filter_label.setStyleSheet("font-size:18px;")
        hight_pass_filter_label.setAlignment(Qt.AlignCenter)

        self.hight_pass_checkbox = QCheckBox()
        hight_pass_filter_name.addWidget(self.hight_pass_checkbox, stretch=10)
        hight_pass_filter_name.addWidget(hight_pass_filter_label, stretch=30)
        hight_pass_filter_name.addWidget(QWidget(), stretch=60)
        self.hight_pass_checkbox.clicked.connect(self.apply_hight_filter)
        high, self.hight_value = self.create_input_field("HZ")
        order, self.order_value_hight = self.create_input_field("Order")
        hbox_value = QHBoxLayout()
        hbox_value.addWidget(WidgetWrapper(high))
        hbox_value.addWidget(WidgetWrapper(order))
        hight_pass_block.addWidget(WidgetWrapper(hight_pass_filter_name), stretch=10)
        hight_pass_block.addWidget(WidgetWrapper(hbox_value), stretch=10)
        hight_pass_block.addWidget(QWidget(), stretch=80)
        return hight_pass_block
