from PyQt5.QtWidgets import QVBoxLayout, QWidget, QProgressBar


class ProgressBar(QProgressBar):

    def __init__(self, *args, **kwargs):
        super(ProgressBar, self).__init__(*args, **kwargs)
        self.setValue(0)

class ProgressWidget(QWidget):

    def __init__(self, *args, **kwargs):
        super(ProgressWidget, self).__init__(*args, **kwargs)
        self.resize(200, 100)
        self.v_layout = QVBoxLayout(self)
        self.progress = ProgressBar(self, minimum=0, maximum=0, textVisible=False,
                                    objectName="GreenProgressBar")
        self.progress.setGeometry(200, 80, 250, 20)
        self.v_layout.addWidget(
            self.progress)
        self.setLayout(self.v_layout)
