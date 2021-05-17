from PyQt5.QtCore import Qt
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


class BaseWidgetView(QWidget):
    def __init__(self, model, main_controller, parent):
        super().__init__(parent)
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
        # self.__travels_time_widget = TravelTimesWidget(self.click_data, self.__bokeh_controller)
        #
        # self._select_items = SelectItemsLayout(self.__select_data_widget, self.__travels_time_widget)
        self.main_v_layout = QVBoxLayout()
        self.main_h_layout = QHBoxLayout()
        # self.main_v_layout.addWidget(self.__generate_menu_bar())
        # self.main_v_layout.addWidget(self.__generate_tool_bar())

        # h_l = QVBoxLayout()
        # h_l.addWidget(self.__select_data_widget, stretch=75)
        # h_l.addWidget(
        #     self.__travels_time_widget, stretch=40
        # )
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
        self.__main_menu_bar_wig_clipp.addAction(WiggleClippingAction(self, self._bokeh_controller))
        self.__main_menu_ba_normalize.addAction(NoneNormalizationAction(self, self._bokeh_controller))
        self.__main_menu_ba_normalize.addAction(StdNormalizationAction(self, self._bokeh_controller))
        self.__main_menu_ba_normalize.addAction(RNormalizationAction(self, self._bokeh_controller))
        self.__main_menu_ba_normalize.addAction(R2NormalizationAction(self, self._bokeh_controller))
        self.__main_menu_bar_automatic_alg.addAction(
            AutomaticAlgoritmsAction(self, self._bokeh_controller, self._travels_time_widget))
        self.__main_menu_bar_automatic_nn.addAction(
            AutomaticAllAction(self, self._bokeh_controller, self._travels_time_widget))
        self.__main_menu_bar_automatic_nn.addAction(
            AutomaticCurrentAction(self, self._bokeh_controller, self._travels_time_widget))

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
