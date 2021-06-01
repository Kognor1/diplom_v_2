import threading
from time import sleep

import requests
from PyQt5 import QtWebEngineWidgets
from PyQt5.QtCore import QUrl, Qt
from PyQt5.QtWebEngineWidgets import QWebEngineView
from PyQt5.QtWidgets import QWidget, QVBoxLayout, QLabel

from bokeh_server.settings import server_url


class BokehTabWidget(QWidget):
    def __init__(self, name_tab, time, path):  # trace, path, src
        super().__init__()
        self.vbox = QVBoxLayout()
        self.hBox = QVBoxLayout()
        self.time = time
        self.name_tab = name_tab
        self.__info_data_label = QLabel(
            "SRC_X: {0} REC_X: {1} \t File: {2};   Time: {3};   Trace: {4};  Path:  {5}".format(
                0,
                2,
                name_tab, time, 9, path)
        )
        self.browser = QWebEngineView()
        self.browser.setZoomFactor(0.84)
        # self.browser.setContextMenuPolicy(Qt.NoContextMenu)
        self.dev = QWebEngineView()
        self.path = path
        self.name = name_tab
        self.hBox.addWidget(self.browser, stretch=95)
        self.hBox.addWidget(self.dev, stretch=20)
        self.hBox.addWidget(self.__info_data_label, stretch=5)
        # self.hBox.addWidget(self.test, stretch=20)
        self.vbox.addLayout(self.hBox)
        self.controls()
        x = threading.Thread(target=self.update_data_info, args=())
        # x.start()
        self.setLayout(self.vbox)

    def update_data_info(self):
        while True:
            sleep(0.01)
            # self.__info_data_label.clear()
            res = requests.get(server_url + "/info", params={"key": self.name_tab})
            info_data = res.json()
            self.__info_data_label.setText(
                "SRC_X: {0} REC_X: {1} \t File: {2};   Time: {3};   Trace: {4};  Path:  {5}".format(
                    info_data["src_x"],
                    info_data["rec_x"],
                    info_data["filename"],
                    info_data["time"],
                    info_data["traces"],
                    info_data["file_path"]))

    def controls(self):
        self.browser.settings().setAttribute(QtWebEngineWidgets.QWebEngineSettings.JavascriptEnabled, True)
        self.browser.setUrl(QUrl(self.path))
        self.browser.page().setDevToolsPage(self.dev.page())

    def change_wiggle(self):
        self.browser.page().runJavaScript(
            """
                   $("div:contains('Wiggle')").click()"""
        )

    def change_clipping(self):
        self.browser.page().runJavaScript(
            """
                          $("div:contains('Clipping')").click()"""
        )
