import requests
from PyQt5.QtCore import Qt, QEvent
from PyQt5.QtGui import QKeyEvent, QKeySequence
from PyQt5.QtWidgets import QWidget, QVBoxLayout, QHBoxLayout, QMenuBar, QToolBar, QProgressDialog

from Controller.Actions.AutomaticAction import AutomaticAllAction, AutomaticCurrentAction
from Controller.Actions.AutomaticAlgoritmsAction import AutomaticAlgoritmsAction
from Controller.Actions.FiltersAction import FilterAction
from Controller.Actions.normalizations.StdNormalizationAction import StdNormalizationAction
from Controller.Actions.normalizations.NoneNormalizationAction import NoneNormalizationAction
from Controller.Actions.normalizations.RNormalizationAction import RNormalizationAction
from Controller.Actions.normalizations.R2NormalizationAction import R2NormalizationAction
from Controller.Actions.WiggleClippingAction import WiggleClippingAction
from Controller.BokehTabController import BokehTabController
from Controller.SelectFileController import SelectFileController
from Controller.TravelsTimeController import TravelsTimeController
from Model.BokehTabModel import BokehTabModel
from Model.SelectFileModel import SelectFileModel
from Model.TravelsTimeModel import TravelsTimeModel
from View.BokehTab.BokehTabView import BokehTabView
from View.SelectFilesView import SelectFileView
from View.TravelsTime.TravelsTimeView import TravelTimesView
from bokeh_server.settings import server_url, SliderConfig


class BaseWidgetView(QWidget):
    def eventFilter(self, obj, event):
        if event.type() == QEvent.KeyPress:
            key = QKeyEvent(event).key()
            if Qt.Key_Up == key:
                self.press_arrow_up_key()
                return True
            elif Qt.Key_Down == key:
                self.press_arrow_down_key()
                return True
            elif Qt.Key_Minus == key:
                self.press_minus_key()
                return True
            elif Qt.Key_Plus == key:
                self.press_plus_key()
                return True
            elif event.modifiers() == Qt.ControlModifier and event.key() == Qt.Key_Z:
                self.undo()
            elif Qt.Key_Shift == key:
                self.press_shift()
                return True
            elif Qt.Key_H == key:
                self.press_h_key()
                return True
        return False

    def undo(self):
        res = requests.get(server_url + "/undo",
                           params={"name": self._model.current_cell_name})

    def press_shift(self):
        for key, value in self._bokeh_controller.open_bokeh_data_tab.items():
            value.widget(0).click_zoom()

    def press_h_key(self):
        for key, value in self._bokeh_controller.open_bokeh_data_tab.items():
            value.widget(0).click_hover()

    def press_plus_key(self):
        current_value = self.wiggle_clipping.choose_type.slider.value()
        self.wiggle_clipping.choose_type.slider.setValue(
            current_value + SliderConfig.STEP.value * 10 if current_value < SliderConfig.MAX_VALUE.value else 0)
        res = requests.get(server_url + "/change_gain",
                           params={"type": "plus", "key": self._model.current_cell_name})

    def press_minus_key(self):
        current_value = self.wiggle_clipping.choose_type.slider.value()
        self.wiggle_clipping.choose_type.slider.setValue(
            current_value - SliderConfig.STEP.value * 10 if current_value > SliderConfig.MIN_VALUE.value else 0)
        res = requests.get(server_url + "/change_gain",
                           params={"type": "minus", "key": self._model.current_cell_name})

    def press_arrow_up_key(self):
        res = requests.get(server_url + "/change_height",
                           params={"type": "up", "key": self._model.current_cell_name})

    def press_arrow_down_key(self):
        res = requests.get(server_url + "/change_height",
                           params={"type": "down", "key": self._model.current_cell_name})

    def __init__(self, model, main_controller, parent):
        super().__init__(parent)
        self.installEventFilter(self)
        self._parent = parent
        self._model = model
        self._main_controller = main_controller
        self._select_data_model = SelectFileModel()
        self._bokeh_model = BokehTabModel()
        self._travels_time_model = TravelsTimeModel()

        self._bokeh_controller = BokehTabController(self._bokeh_model)
        self._select_data_controller = SelectFileController(self._select_data_model, self._main_controller)
        self._travels_time_controller = TravelsTimeController(self._travels_time_model)

        self._bokeh_tab_view = BokehTabView(self._bokeh_model, self._bokeh_controller, self._parent,
                                            self._model)

        self._travels_time_widget = TravelTimesView(
            self._travels_time_model, self._travels_time_controller, self._bokeh_controller
        )
        self._select_data_widget = SelectFileView(
            self._select_data_model, self._select_data_controller, self._bokeh_tab_view, self._travels_time_widget
        )

        self.main_v_layout = QVBoxLayout()
        self.main_h_layout = QHBoxLayout()
        v_box_layout = QVBoxLayout()
        v_box_layout.addWidget(self._select_data_widget)
        v_box_layout.addWidget(self._travels_time_widget)
        self.main_v_layout.addWidget(self.__generate_menu_bar())
        self.main_v_layout.addWidget(self.__generate_tool_bar())
        self.main_h_layout.addLayout(v_box_layout, stretch=25)

        self.main_h_layout.addWidget(self._bokeh_tab_view, stretch=75)
        # TODO хз по идее контролера здесь не должно быть во  view, но как тогда пробросить фк клика на
        # self.main_h_layout.addWidget(self.__bokeh_controller, stretch=75)
        self.main_v_layout.addLayout(self.main_h_layout)
        self.setLayout(self.main_v_layout)
        progress = QProgressDialog("Copying files...", "Abort Copy", 0, 10, self)
        progress.setWindowModality(Qt.WindowModal)
        for i in range(10):
            progress.setValue(i)

            if progress.wasCanceled():
                break
            # ... copy one file

        progress.setValue(10)

    def __generate_menu_bar(self):
        self.__main_menu_bar = QMenuBar()
        # self.__main_menu_bar_menu = self.__main_menu_bar.addMenu("&Menu")
        self.__main_menu_ba_normalize = self.__main_menu_bar.addMenu("&Normalize Data")
        self.__main_menu_bar_filtering = self.__main_menu_bar.addMenu("&Filtering")
        self.__main_menu_bar_wig_clipp = self.__main_menu_bar.addMenu("&Wiggle and Clipping")
        self.__main_menu_bar_automatic_nn = self.__main_menu_bar.addMenu("&Automatic with NN")
        self.__main_menu_bar_automatic_alg = self.__main_menu_bar.addMenu("&Automatic alg")
        self.__main_menu_bar_filtering.addAction(FilterAction(self, self._bokeh_controller))
        self.wiggle_clipping = WiggleClippingAction(self, self._bokeh_controller)
        self.__main_menu_bar_wig_clipp.addAction(self.wiggle_clipping)
        self.__main_menu_ba_normalize.addAction(NoneNormalizationAction(self, self.wiggle_clipping))
        self.__main_menu_ba_normalize.addAction(StdNormalizationAction(self, self.wiggle_clipping))
        self.__main_menu_ba_normalize.addAction(RNormalizationAction(self, self.wiggle_clipping))
        self.__main_menu_ba_normalize.addAction(R2NormalizationAction(self, self.wiggle_clipping))
        self.__main_menu_bar_automatic_alg.addAction(
            AutomaticAlgoritmsAction(self, self._bokeh_controller, self._travels_time_widget))
        self.__main_menu_bar_automatic_nn.addAction(
            AutomaticAllAction(self, self._bokeh_controller, self._travels_time_widget))
        # self.__main_menu_bar_automatic_nn.addAction(
        #     AutomaticCurrentAction(self, self._bokeh_controller, self._travels_time_widget))

        return self.__main_menu_bar

    def __generate_tool_bar(self):
        self.toolbar = QToolBar()  # self.addToolBar('Exit')
        # self.toolbar.addAction(GAction(self))
        # self.toolbar.addAction(SAction(self, self.__bokeh_controller))
        # self.toolbar.addAction(FilterAction(self, self.__bokeh_controller))
        # self.p_action = PAction(self, self.__travels_time_widget)
        # self.toolbar.addAction(self.p_action)
        # self.toolbar.addAction(ExitAction(self))
        return self.toolbar
