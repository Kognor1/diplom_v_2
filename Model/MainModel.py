from typing import Optional

from PyQt5.QtCore import QObject


class MainModel(QObject):
    current_cell_name: Optional[str]

    def __init__(self):
        super().__init__()
