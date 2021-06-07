import requests
from PyQt5 import QtWidgets
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QIntValidator
from PyQt5.QtWidgets import QAction, QWidget, QVBoxLayout, QHBoxLayout, QPushButton, QComboBox, QLabel, QLineEdit, \
    QCheckBox, QFileDialog

from Controller.BokehTabController import BokehTabController
from Controller.CreateGodografController import CreateGodografController
from Utility.WidgetWrapper import WidgetWrapper
from View.TravelsTime import TravelsTimeView
from View.TravelsTime.TravelsTimeView import TravelTimesView
from bokeh_server.settings import server_url
from bokeh_server.utils.db import FilterType, GodografType


class AutomaticAlgoritmsAction(QAction):

    def __init__(self, parent, bokeh_tab_controller, travels_time):
        super().__init__("&Automatic algs", parent)
        self.setStatusTip("Use STA/LTA, MER, EM")
        self.bokeh_tab_controller = bokeh_tab_controller
        self.travels_time: TravelTimesView = travels_time
        self.triggered.connect(self.open_choose_type_menu)
        self.choose_type = None

    def open_choose_type_menu(self):
        self.choose_type = SettingsPlotWidget(self.bokeh_tab_controller, self.travels_time)
        self.choose_type.show()


class SettingsPlotWidget(QWidget):
    def __init__(self, bokeh_tab_controller, travels_time, parent=None):
        super().__init__(parent)
        self.travels_time: TravelsTimeView = travels_time
        self.bokeh_tab_controller: BokehTabController = bokeh_tab_controller
        self.setGeometry(300, 300, 300, 300)
        self.vert_layout = QVBoxLayout()
        self.name_god_h_l = QHBoxLayout()
        self.line_edit = QLineEdit()
        self.alg_type = QComboBox()
        self.alg_type.addItem("STA/LTA")
        self.alg_type.addItem("EM")
        self.alg_type.addItem("MER")
        self.line_edit_label = QLabel("Set Name Godograf")
        self.name_god_h_l.addWidget(self.line_edit_label)
        self.name_god_h_l.addWidget(self.line_edit)
        self.check_box_create_new = QCheckBox("Create_new")
        self.check_box_create_new.clicked.connect(self.change_check_box)
        if self.travels_time.table.rowCount() == 0:
            self.check_box_create_new.setChecked(True)
            self.check_box_create_new.setEnabled(False)
        self.ok_button = QPushButton("Ok")
        self.ok_button.clicked.connect(self.ok_clicked)
        self.vert_layout.addWidget(self.alg_type)
        self.vert_layout.addWidget(self.check_box_create_new)
        self.vert_layout.addWidget(WidgetWrapper(self.name_god_h_l), stretch=40)
        self.vert_layout.addWidget(self.ok_button, stretch=20)
        self.setLayout(self.vert_layout)

    def ok_clicked(self):
        if self.check_box_create_new.isChecked() and not self.line_edit.text():
            error_dialog = QtWidgets.QErrorMessage()
            error_dialog.showMessage('Set row name!')
            return
        if self.check_box_create_new.isChecked():
            travels_time_name = self.line_edit.text()
        else:
            travels_time_name = self.travels_time.controller.current_godograf
        CreateGodografController.start_all_godograf_event(god_type=self.alg_type.currentText(),
                                                          travels_time_name=travels_time_name
                                                          )
        if self.check_box_create_new.isChecked():
            self.travels_time.add_travels_row(self.line_edit.text())

        self.close()

    def create_path_field(self):
        self.open_file_btn.clicked.connect(self.__get_model_file)
        h_box = QHBoxLayout()
        h_box.addWidget(self.resource_label)
        h_box.addWidget(self.model_path_line_edit)
        h_box.addWidget(self.open_file_btn)
        return h_box

    def __get_model_file(self):
        path = QFileDialog.getExistingDirectory(self, "Choose model")
        if path:
            self.model_path_line_edit.setText(path)
            self.directory = path
            self.ok_button.setDisabled(False)

    def change_check_box(self):
        if self.check_box_create_new.isChecked():
            self.name_god_h_l.setEnabled(False)
        else:
            self.name_god_h_l.setEnabled(True)
