from threading import Lock

from bokeh.application.handlers import Handler

from bokeh_server.RenderData.godografs.Godograf import GodografSettings


class DatabaseHandler(Handler):
    """A Bokeh Application handler to initialize Documents from a database"""

    doc = None

    def __init__(self, plot, name):
        super().__init__()
        self.plot = plot
        self.name = name
        self._godograf_settings = GodografSettings()
        self.lock = Lock()

    def modify_document(self, doc):
        # doc.add_periodic_callback(self.update_data, 1000)
        doc.add_root(self.plot)
        self._godograf_settings.docs[self.name] = doc
        return doc
