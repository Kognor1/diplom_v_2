import os
from typing import Dict, Optional

import requests
from PyQt5.QtCore import QObject
from PyQt5.QtWidgets import QTabWidget

from View.BokehTab.BokehTabWidget import BokehTabWidget
from bokeh_server.settings import server_url


class BokehTabController(QObject):
    def __init__(self, model):
        super().__init__()
        self.model = model
        self.open_bokeh_data_tab = {}
        self.current_bokeh_tab_name: Optional[str] = None
        self.curren_main_data_widget = None
        self.curren_bokeh_tab_widget = None

    def add_custom_tab(self, app_paths: Dict, parent):
        tabs_list = []
        for key, value in app_paths.items():
            bokeh_tab = BokehTabWidget(key, 32, value)
            tabs_list.append({"name": key, "tab": bokeh_tab})
        for tab in tabs_list:
            tab_widget = QTabWidget(parent)
            tab_widget.addTab(tab["tab"], tab["name"])
            tab_widget.setVisible(False)
            self.open_bokeh_data_tab[tab["name"]] = tab_widget
        return self.open_bokeh_data_tab

    def set_current_widget(self, widget):
        self.curren_main_data_widget = widget

    def change_table_cell(self, cell_name):
        _, name = os.path.split(cell_name)
        self.curren_main_data_widget.setVisible(False)
        self.open_bokeh_data_tab[cell_name].setVisible(True)
        self.curren_main_data_widget = self.open_bokeh_data_tab[cell_name]
        self.current_bokeh_tab_name = cell_name

        return False

    def change_godograf(self, file_name, cell_name):
        res = requests.get(
            server_url + "/change_godograf_event",
            json={"file_name": file_name, "cell_name": cell_name},
        )
        return res.json()

    def clear_all_tabs(self):
        self.curren_main_data_widget.setVisible(False)
        for key, value in self.open_bokeh_data_tab.items():
            value.deleteLater()
        self.open_bokeh_data_tab = {}
        self.current_bokeh_tab_name = None
        self.curren_main_data_widget = None
