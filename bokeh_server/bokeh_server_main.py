import logging
from wsgiref.simple_server import make_server

import falcon
from bokeh_server.falcon.MiddleWare import JsonMiddleware

from bokeh_server.db.models import dbhandle, OpenedFile

import bokeh_server.service as service

app = falcon.App(middleware=[JsonMiddleware()])


def bokeh_main():
    with dbhandle:
        dbhandle.create_tables([OpenedFile])
    service.create_application()

    logger = logging.getLogger()
    with make_server("", 8000, app) as httpd:
        print("Serving on port 8000...")
        httpd.serve_forever()

#
# if __name__ == '__main__':
#     bokeh_main()
