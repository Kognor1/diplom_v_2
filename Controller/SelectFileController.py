import glob
import os

from PyQt5.QtCore import QObject, pyqtSlot
from PyQt5.QtWidgets import QFileDialog

from Controller.BokehTabController import BokehTabController
from Controller.MainController import MainController
from Model.SelectFileModel import SelectFileModel
from Utility.Constants import InputSettings
from dao.SelectFileDao import SelectFileDao


class SelectFileController(QObject):
    def __init__(self, model, main_controller):
        super().__init__()
        self.main_controller: MainController = main_controller
        self._model: SelectFileModel = model

    def open_folder(self, path):

        segy_files = []
        for i in InputSettings.FILE_TYPES.value:
            segy_files += glob.glob(os.path.join(path, i))
        for i in segy_files:
            _, name = os.path.split(i)
            SelectFileDao.add_new_file(name, i)
            self._model.add_row(filename=name)
        apps_paths = SelectFileDao.start_bokeh_render()
        return apps_paths

    @classmethod
    def file_is_open(cls, name):
        return SelectFileDao.file_is_open(name)
