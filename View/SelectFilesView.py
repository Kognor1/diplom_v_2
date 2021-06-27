from threading import Thread
from time import sleep

from PyQt5.QtCore import Qt, QTimer
from PyQt5.QtGui import QCursor
from PyQt5.QtWidgets import (
    QWidget,
    QTabWidget,
    QVBoxLayout,
    QLabel,
    QSizePolicy,
    QHeaderView,
    QFileDialog,
    QTableView,
    QPushButton, QMenu, QAbstractItemView,
)
from tornado import gen

from Controller.Actions.AutomaticAction import AutomaticCurrentAction
from Controller.SelectFileController import SelectFileController
from Model.SelectFileModel import SelectFileModel
from View.BokehTab.BokehTabView import BokehTabView
from View.ProgressBar import ProgressWidget
from View.TravelsTime import TravelsTimeView


class SelectFileView(QWidget):
    def __init__(self, model, controller, bokeh_tab_view, _travels_time_view):
        super().__init__()
        self._model: SelectFileModel = model
        self._controller: SelectFileController = controller
        self._bokeh_tab_view: BokehTabView = bokeh_tab_view
        self._travels_time_view: TravelsTimeView = _travels_time_view
        self.tabWidget = QTabWidget()
        self.vbox = QVBoxLayout()
        self.__files_tab = QWidget()
        self.__files_tab.setLayout(self.__create_files_tab_layout())
        self.tabWidget.addTab(self.__files_tab, "Files List")
        self.__opened_files = {}
        self.vbox.addWidget(self.tabWidget)
        self.setLayout(self.vbox)
        self.current_cell_name = ""
        self.apps_path = {}

    def __create_files_tab_layout(self):
        self.hor_layout = QVBoxLayout()
        self.label = QLabel("SEISMOGRAM FILES")
        self.__open_folder_btn = QPushButton("Load Segy")
        __open_folder_btn_size_policy = QSizePolicy(QSizePolicy.Preferred, QSizePolicy.Fixed)
        self.__open_folder_btn.setSizePolicy(__open_folder_btn_size_policy)
        self.__open_folder_btn.clicked.connect(self.open_file)
        self.hor_layout.addWidget(self.label)
        self.hor_layout.addWidget(self.__open_folder_btn)
        self.table = QTableView(self)
        self.table.setModel(self._model)
        self.table.setContextMenuPolicy(Qt.CustomContextMenu)
        self.table.customContextMenuRequested.connect(self.generateMenu)  # +++
        self.table.viewport().installEventFilter(self)
        self.table_header = self.table.horizontalHeader()
        self.table_header.setSectionResizeMode(0, QHeaderView.Stretch)
        self.table.clicked.connect(self.__cell_click)
        self.hor_layout.addWidget(self.table)
        return self.hor_layout

    def generateMenu(self, pos):
        if self.table.selectionModel().selection().indexes():
            i = self.table.selectionModel().selection().indexes()[0]
            row, column = i.row(), i.column()
            menu = QMenu()
            item = self._model.item(row, column)
            openAction = menu.addAction(
                AutomaticCurrentAction(self, self._travels_time_view, item.text()))
            action = menu.exec_(QCursor.pos())
            if action == openAction:
                pass
    def onCountChanged(self, value):
        self.progress.progress.setValue(value)

    def open_file(self):
        path = QFileDialog.getExistingDirectory(self, "Select Directory")
        self.progress = ProgressWidget()
        self.progress.show()
        self.timer = QTimer(self, timeout=self.check_apps_path)
        self.timer.start(1000)
        if self._model.rowCount() != 0:
            try:
                self._controller.main_controller.stop_bokeh(self._controller.main_controller.bokeh_process)
                print("успешно")
            except Exception as e:
                print(e)
            try:
                self._bokeh_tab_view.clear_tabs()
            except Exception as e:
                print(e)
            try:
                self.apps_path = {}
            except Exception as e:
                print(e)
            try:
                self._travels_time_view.clear_all_rows()
            except Exception as e:
                print(e)
            try:
                self._model.setRowCount(0)
            except Exception as e:
                print(e)
        process = self._controller.main_controller.start_bokeh_thread()
        self._controller.main_controller.set_bokeh_process(process)
        connected = True
        self.start_load_data_thread(path)
        # while connected:
        #     try:
        #         self.onCountChanged(3)
        #         apps_path = self._controller.open_folder(path)
        #         connected = False
        #     except Exception as e:
        #         print(e)
        #     # sleep(1)
        # self._bokeh_tab_view.add_custom_tab(apps_path)

    def __cell_click(self, *args):
        print(args[0].column(), args[0].row())
        if args[0].column() == 0:
            item = self._model.itemFromIndex(args[0])
            clicked_cell_name = item.text()
            self._bokeh_tab_view.change_table_cell(clicked_cell_name)

    def start_load_data_thread(self, path):
        t = Thread(target=self.load_data_thread, args=(path,))
        t.start()

    def load_data_thread(self, path):
        connected = True
        while connected:
            try:
                self.apps_path = self._controller.open_folder(path)
                connected = False
            except Exception as e:
                print(e)
            sleep(1)
        # self._bokeh_tab_view.add_custom_tab(apps_path)

    def check_apps_path(self):
        if self.apps_path:
            # gen.sleep(2)  # todo хз ли нужно
            self.timer.stop()
            self._bokeh_tab_view.add_custom_tab(self.apps_path)
            self.progress.close()
