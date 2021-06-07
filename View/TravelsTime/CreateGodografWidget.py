from PyQt5 import QtWidgets
from PyQt5.QtGui import QStandardItem
from PyQt5.QtWidgets import (
    QWidget,
    QComboBox,
    QVBoxLayout,
    QPushButton,
    QLineEdit,
    QLabel,
    QFileDialog,
    QHBoxLayout,
)

from Controller.CreateGodografController import CreateGodografController
from Utility.WidgetWrapper import WidgetWrapper
from View.TravelsTime import TravelsTimeView
from bokeh_server.RenderData.godografs.Godograf import GodografType


class CreateGodografWidget(QWidget):
    def __init__(self, create_godograf_controller, travels_time):
        super().__init__()
        self.travels_time: TravelsTimeView = travels_time
        self._create_godograf_controller: CreateGodografController = create_godograf_controller
        self.open_file_btn = QPushButton("Open Model")
        self.resource_label = QLabel("Model:")
        self.directory = ""
        self.model_path_line_edit = QLineEdit()
        self.filename = ""
        self.setGeometry(100, 100, 100, 100)
        self.vert_layout = QVBoxLayout()
        self.type = QComboBox()
        self.type.addItem(GodografType.Manual)
        self.type.addItem(GodografType.SemiAutomatic)
        # self.type.addItem(GodografType.Automatic)
        # self.type.view().pressed.connect(self.handle_item_pressed)
        self.name_god_h_l = QHBoxLayout()
        self.line_edit = QLineEdit()
        self.line_edit_label = QLabel("Set Name Godograf")
        self.name_god_h_l.addWidget(self.line_edit_label)
        self.name_god_h_l.addWidget(self.line_edit)
        self.ok_button = QPushButton("OK")
        self.ok_button.clicked.connect(self._create_godograf)
        # self.vert_layout.addWidget(self.model_select_widget, stretch=30)
        self.vert_layout.addWidget(WidgetWrapper(self.name_god_h_l), stretch=30)
        self.vert_layout.addWidget(self.ok_button)
        self.setLayout(self.vert_layout)

    def _create_godograf(self):
        current_type = self.type.currentText()
        row_name = self.line_edit.text()
        if not row_name:
            error_dialog = QtWidgets.QErrorMessage()
            error_dialog.showMessage('Set row name!')
        model_path = self.model_path_line_edit.text()
        if current_type != GodografType.Automatic:
            model_path = None
        self._create_godograf_controller.start_all_godograf_event(
            current_type, travels_time_name=row_name,
            model_path=model_path
        )
        travels_time_name = self.travels_time.add_travels_row(row_name)
        self.close()
