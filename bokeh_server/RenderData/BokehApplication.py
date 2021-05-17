from bokeh_server.RenderData.Adaptor import BokehAdaptor


class BokehApplication:
    def __init__(self, app, bokeh_html: BokehAdaptor, plot, filename):
        self.app = app
        self.bokeh_html: BokehAdaptor = bokeh_html
        self.plot = plot
        self.filename = filename
