from typing import List, Optional, Dict

from PyQt5.QtWidgets import QFileDialog
from bokeh.document import Document
from bokeh.models import ColumnDataSource

from bokeh_server.utils.SingletonMeta import SingletonMeta


class GodografType:
    Manual = "Manual"
    SemiAutomatic = "Semi-automatic"
    Automatic = "Automatic"
    Mer = "MER"
    Em = "EM"
    STA_LTA = "STA/LTA"


class GodografData:
    def __init__(self):
        self.points_x = []
        self.points_y = []
        self.colors = []


class Godograf:
    def __init__(self, name):
        self.is_active = True
        self.visible = True
        self.current_color = "blue"
        self._color_changed = False
        self.fixed = False
        self.name = name
        self.current_part: Optional[GodografData] = None

    def set_color_changed(self, value):
        self._color_changed = value

    def add_color(self, color):
        print("COLOR:", color)
        self.current_part.colors.append(color)

    def add_coord_x(self, x):
        self.current_part.points_x.append(x)

    def add_coord_y(self, y):
        self.current_part.points_y.append(y)

    def is_visible(self):
        return self.visible

    def set_visible(self, value):
        self.visible = value

    @property
    def color_changed(self):
        return self._color_changed


class GodografSettings(metaclass=SingletonMeta):
    current_travels_name: None

    def __init__(self):
        self.is_control = False
        self.current_godograf: Optional[Godograf] = None
        self.current_index = 0
        self.all_godografs: Dict[str, Dict[str, ColumnDataSource]] = {}
        self.reset_points_x = False
        self.reset_points_y = False
        self.reset_points_color = False
        self.reset_points = False
        self.current_file_name = None
        self.current_travels_name = None
        self.energy_source: Dict[str, int] = {}
        self.docs: Dict[str, Document] = {}
        self.step = 5
        self.type = "Manual"
        self.files_is_open = False

    def get_is_control(self):
        return self.is_control

    def set_is_control(self, value=None):
        if value:
            self.is_control = value
        else:
            self.is_control = not self.is_control

    def create_new_godograf(self, f_name: str, g_name: str):
        godograf = Godograf(g_name)
        godograf_data = GodografData()
        if f_name not in self.all_godografs:
            self.all_godografs[f_name] = {}
        self.all_godografs[f_name][g_name] = godograf
        self.all_godografs[f_name][g_name].current_part = godograf_data
        self.current_godograf = self.all_godografs[f_name][g_name]

    def create_or_choise_part_godograf(self, f_name: str, name: str):

        # if not self.current_godograf:
        #     return
        if f_name not in self.all_godografs:
            self.all_godografs[f_name] = {}
        if name not in self.all_godografs[f_name]:
            godograf_data = GodografData()
            self.all_godografs[f_name][name] = Godograf(name)
            self.all_godografs[f_name][name].current_part = godograf_data
            self.current_godograf = self.all_godografs[f_name][name]
        else:
            self.current_godograf = self.all_godografs[f_name][name]
        if self.current_travels_name != name:
            self.reset_points = True
        self.current_travels_name = name

    #

    def save_godograf(self, godograf_name):
        name = QFileDialog.getSaveFileName()
        if name[0] != "":
            file = open(name[0], "w")
            for key, value in self.all_godografs.items():
                if godograf_name in value:
                    a = value[godograf_name]
                    for i in zip(a.data["x"], a.data["y"]):
                        file.write(str(self.energy_source[key]) + ", " + str(i[0]) + ", " + str(i[1]) + "\n")

            file.close()

    def get_current_godograf(self):
        return self.current_godograf

    def set_current_godograf_color(self, new_color):
        new_colors = []
        # todo
        if new_color != self.current_godograf.current_color:
            for i in range(len(self.current_godograf.current_part.colors)):
                new_colors.append(new_color)
            self.current_godograf.current_part.colors = new_colors
            self.current_godograf.current_color = new_color
        #
        # self.current_godograf.current_part.colors = new_colors
        # self.current_godograf.current_part.current_color = new_color
        # self.current_godograf.set_color_changed(True)

    def get_current_godograf_color(self):
        return self.current_godograf.current_part.colors

    def color_was_changed(self):
        return self.current_godograf.color_changed

    def set_current_godograf(self, file_name: str, travels_name: str):

        # self.create_or_choise_part_godograf(self.current_file_name, self.current_travels_name)
        # self.create_or_choise_part_godograf(file_name, travels_name)
        self.current_godograf = self.all_godografs[file_name][travels_name]
        self.reset_points = True

    def press_arrow_up(self):
        new_points_y = []
        for i in self.current_godograf.current_part.points_y:
            new_points_y.append(i - self.step)
        print(new_points_y)
        self.current_godograf.current_part.points_y = new_points_y
        self.reset_points_y = True

    def press_arrow_down(self):
        new_points_y = []
        for i in self.current_godograf.current_part.points_y:
            new_points_y.append(i + self.step)
        print(new_points_y)
        self.current_godograf.current_part.points_y = new_points_y
        self.reset_points_y = True

    def change_tab(self, file_name, travels_name):
        # self.reset_points = True

        self.create_or_choise_part_godograf(file_name, travels_name)
        if self.current_godograf:
            self.current_godograf.set_color_changed(True)
