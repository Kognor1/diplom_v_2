import os
from functools import partial

from PyQt5.QtWidgets import (
    QWidget,
    QVBoxLayout,
    QLabel,
    QTableWidget,
    QHeaderView,
    QPushButton,
    QComboBox,
    QLineEdit,
    QHBoxLayout,
    QFileDialog,
    QTableWidgetItem,
)

from Controller.BokehTabController import BokehTabController
from Controller.CreateGodografController import CreateGodografController
from Controller.TravelsTimeController import TravelsTimeController
from Utility.WidgetWrapper import WidgetWrapper
from View.TravelsTime.CreateGodografWidget import CreateGodografWidget
from View.TravelsTime.SettingsGodograf import SettingsGodograf


class TravelTimesView(QWidget):
    def __init__(self, model, controller, bokeh_controller):
        super().__init__()
        self.controller: TravelsTimeController = controller
        self.bokeh_controller: BokehTabController = bokeh_controller
        self.vbox = QVBoxLayout()
        self.__files_tab = QWidget()
        self.__files_tab.setLayout(self._create_files_tab_layout())
        self.vbox.addWidget(self.__files_tab)
        self.setLayout(self.vbox)
        self.current_cell_name = None

    def _create_files_tab_layout(self):
        self.v_layout = QVBoxLayout()
        self.label = QLabel("TRAVEL TIMES")
        self.v_layout.addWidget(self.label)
        h_layout = QHBoxLayout()
        self.create_godograf_button = QPushButton("+")
        self.load_godograf_button = QPushButton("Загрузить")
        h_layout.addWidget(self.create_godograf_button)
        h_layout.addWidget(self.load_godograf_button)
        self.create_godograf_button.clicked.connect(self._create_gogograf_button_callback)
        self.load_godograf_button.clicked.connect(self._load_gogograf_button_callback)
        self.table = QTableWidget(self)
        self.table.setColumnCount(5)
        self.table.setHorizontalHeaderLabels(["File", "Color", "Settings", "Export", "Удалить"])
        self.table_header = self.table.horizontalHeader()
        self.table.cellClicked.connect(self.__cell_click)
        # self.table.cellClicked.connect(self.__cell_click)
        self.table_header.setSectionResizeMode(0, QHeaderView.ResizeToContents)
        self.table_header.setSectionResizeMode(1, QHeaderView.ResizeToContents)
        self.table_header.setSectionResizeMode(2, QHeaderView.ResizeToContents)
        self.table_header.setSectionResizeMode(3, QHeaderView.ResizeToContents)
        self.table_header.setSectionResizeMode(4, QHeaderView.ResizeToContents)
        self.v_layout.addWidget(WidgetWrapper(h_layout))
        self.v_layout.addWidget(self.table)
        self.create_godograf_controller = CreateGodografController()
        self.create_godograf_widget = CreateGodografWidget(self.create_godograf_controller, self)

        return self.v_layout

    def _create_gogograf_button_callback(self):
        self.create_godograf_widget.show()

    def _load_gogograf_button_callback(self):
        file_path = QFileDialog.getOpenFileName()
        if file_path[0] != "":
            _, row_name = os.path.split(file_path[0])
            self.add_travels_row(row_name)
            self.controller.local_load_godograf(file_path[0])

    def __cell_click(self, *args, **kwargs):
        if args[1] == 0:
            self.current_cell_name = self.table.item(args[0], args[1]).text()
            self.controller.change_cell(
                cell_name=self.current_cell_name, file_name=self.bokeh_controller.current_bokeh_tab_name
            )

    def add_travels_row(self, name_row):
        self.controller.current_godograf = name_row
        row = self.table.rowCount()
        self.table.setRowCount(row + 1)
        name = name_row
        cell = QTableWidgetItem(name)
        q_color = QComboBox()
        q_color.addItem("blue")
        q_color.addItem("red")
        q_color.addItem("purple")
        q_color.addItem("black")
        # q_color.currentIndexChanged.connect(self._change_color)
        settings_godograf = SettingsGodograf(name_row)
        q_settings_button = QPushButton("Settings")
        q_settings_button.clicked.connect(partial(self._q_settings_button_click, settings_godograf))
        q_export_button = QPushButton("Export")
        q_del_button = QPushButton("Удалить")
        q_export_button.clicked.connect(self.export)
        q_del_button.clicked.connect(self.delete_godograf)
        self.table.setItem(row, 0, cell)
        self.table.setCellWidget(row, 1, q_color)
        self.table.setCellWidget(row, 2, q_settings_button)
        self.table.setCellWidget(row, 3, q_export_button)
        self.table.setCellWidget(row, 4, q_del_button)
        return name

    def delete_godograf(self):
        row = self.table.currentIndex().row()
        col = self.table.currentIndex().column()
        name = self.table.item(row, 0).text()
        self.controller.delete_godofraf(name)
        self.table.removeRow(row)

    def export(self):
        row = self.table.currentIndex().row()
        col = self.table.currentIndex().column()
        name = self.table.item(row, 0).text()
        file_path = QFileDialog.getSaveFileName(filter="Txt Files (*.txt)")
        if file_path[0] != "":
            self.controller.local_save_godofraf(name, file_path[0])

    def clear_all_rows(self):
        self.table.setRowCount(0)
        self.current_cell_name = None

    def _q_settings_button_click(self, setting_godograf, b):
        setting_godograf.show()
