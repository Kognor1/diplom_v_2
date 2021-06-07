import multiprocessing
import sys

from Model.MainModel import MainModel
from Controller.MainController import MainController
from PyQt5.QtWidgets import QApplication

from View.MainView import MainView
def main():
    app = QApplication(sys.argv)

    # создаём модель
    model = MainModel()

    # создаём контроллер и передаём ему ссылку на модель
    main_controller = MainController(model)
    main_view = MainView(model, main_controller)
    main_view.installEventFilter(main_controller)
    main_view.show()
    app.exec()


if __name__ == "__main__":
    multiprocessing.freeze_support()
    sys.exit(main())
