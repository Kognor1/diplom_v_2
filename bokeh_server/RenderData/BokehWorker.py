import threading

from bokeh.embed import server_document
from jinja2 import Environment, FileSystemLoader
from tornado.web import RequestHandler, HTTPError

from bokeh.server.server import Server
from tornado.ioloop import IOLoop

from bokeh_server.settings import bokeh_port

env = Environment(loader=FileSystemLoader("templates"))

apps = {}


class IndexHandler(RequestHandler):
    def get(self):
        template = env.get_template("index.html")
        print(self.request.uri)
        path = self.request.uri
        for i in apps.keys():
            if i.split(".")[0] == self.request.uri:
                path = i
        port = bokeh_port
        script = server_document(f"http://127.0.0.1:{port}" + path)
        self.write(template.render(script=script))


class JqueryHandler(RequestHandler):
    def get(self):
        try:
            with open("templates/jquery-3.6.0.min.js", "rb") as f:
                data = f.read()
                self.write(data)
            self.finish()
        except Exception as e:
            print(e)
            raise HTTPError(404, "Invalid archive")


class BokehWorker(threading.Thread):
    def __init__(self, list_apps):
        super().__init__()
        self.list_apps = list_apps

    def bokeh_stop(self):
        self.server.stop()

    def run(self):
        extra = []
        for i in self.list_apps:
            apps["/" + i.app.handlers[0].name] = i.app
            extra.append(("/" + i.app.handlers[0].name.split(".")[0], IndexHandler))
        extra.append(("/jquery-3.6.0.min.js", JqueryHandler))

        self.server = Server(
            apps, port=bokeh_port, io_loop=IOLoop(), extra_patterns=extra, allow_websocket_origin=["*"]
        )
        self.server.start()
        self.server.io_loop.start()
