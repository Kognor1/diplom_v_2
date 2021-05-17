from PyQt5 import QtGui
from PyQt5.QtCore import QObject, pyqtSignal
from PyQt5.QtGui import QStandardItem
from PyQt5.QtWidgets import QTableWidgetItem, QHeaderView


class SelectFileModel(QtGui.QStandardItemModel):
    def __init__(self):
        super().__init__()
        self.setColumnCount(1)  # 3
        self.setHorizontalHeaderLabels(["File"])

    def add_row(self, filename):
        row = self.rowCount()
        self.setRowCount(row + 1)
        cell = QStandardItem(str(filename))
        cell.setEditable(False)
        self.setItem(row, 0, cell)
