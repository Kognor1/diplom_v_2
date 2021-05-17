import json
import logging

import falcon

from bokeh_server.OpenedFile.dao import OpenedFileDao
from bokeh_server.db.model_utils import to_json
from peewee_validates import StringField, Validator

logger = logging.getLogger()


class OpenedFileResource:
    def on_get(self, _: falcon.Request, resp: falcon.Response):
        rows = OpenedFileDao.get_opened_files()
        resp.json = to_json(rows)

    def on_post(self, req: falcon.Request, resp: falcon.Response):
        open_file_validator = OpenFileValidator()
        raw_data = req.json
        if open_file_validator.validate(raw_data):
            params = open_file_validator.data
        else:
            logger.warning(open_file_validator.errors)
            raise falcon.HTTPBadRequest("Bad request", open_file_validator.errors)
        opened_file = OpenedFileDao.create_new_file(params["file_name"], params["full_path"])
        resp.json = to_json(opened_file)


class OpenFileValidator(Validator):
    file_name = StringField()
    full_path = StringField()
