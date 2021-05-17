from typing import Dict, List
from PyQt5.QtWidgets import QTabWidget, QWidget, QVBoxLayout

from Controller.BokehTabController import BokehTabController
from Controller.MainController import MainController
from Model.BokehTabModel import BokehTabModel
from Model.MainModel import MainModel


class BokehTabView(QWidget):
    def __init__(self, model, controller, parent, main_model: MainModel):
        super().__init__(parent)
        self._model: BokehTabModel = model
        self._parent = parent
        self._controller: BokehTabController = controller
        self._root_layout = QVBoxLayout()
        self._main_model = main_model

    def add_custom_tab(self, app_paths: Dict):
        tab_widgets = self._controller.add_custom_tab(app_paths, self)
        name, start_widget = next(iter(tab_widgets.items()))
        start_widget.setVisible(True)
        self._main_model.current_cell_name = name
        self._controller.set_current_widget(start_widget)
        self._controller.current_bokeh_tab_name = name
        for key, value in tab_widgets.items():
            self._root_layout.addWidget(value)
        self.setLayout(self._root_layout)
        self.show()

    # self.addTab(tab["tab"], tab["name"])
    def change_table_cell(self, cell_name):
        self._controller.change_table_cell(cell_name)
        self._main_model.current_cell_name = cell_name
    def clear_tabs(self):
        self._controller.clear_all_tabs()