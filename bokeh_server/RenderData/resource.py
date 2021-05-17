import json
import logging
from typing import List

import falcon
import requests

from bokeh_server.OpenedFile.dao import OpenedFileDao
from bokeh_server.RenderData.Controller import BokehController
from bokeh_server.db.model_utils import to_json

from bokeh_server.db.models import OpenedFile

logger = logging.getLogger()


class RenderDataResource:
    def on_get(self, _: falcon.Request, resp: falcon.Response):
        b_conroller = BokehController()
        files: List[OpenedFile] = OpenedFileDao.get_opened_files()
        for file in files:
            b_conroller.create_application(file.full_path)
        paths = b_conroller.start_applications()
        # self.ping(paths.values())
        resp.json = to_json(paths)

    # @classmethod
    # def ping(cls, paths):
    #     for path in paths:
    #         res = requests.get(path)
    #         print(res)
