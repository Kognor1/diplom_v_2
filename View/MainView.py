from PyQt5.QtWidgets import QMainWindow

from View.main_view_ui import BaseWidgetView


class MainView(QMainWindow):
    def __init__(self, model, main_controller):
        super().__init__()
        self.setGeometry(0, 0, 1600, 900)
        self._model = model
        self._main_controller = main_controller
        self.base_widget = BaseWidgetView(model, main_controller, parent=self)
        self.setCentralWidget(self.base_widget)
        self.show()
