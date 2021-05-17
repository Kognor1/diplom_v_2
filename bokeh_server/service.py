from bokeh_server.OpenedFile.resource import OpenedFileResource
from bokeh_server.RenderData.InfoResource import InfoResource
from bokeh_server.RenderData.actions.FilteringResource import FilterEventResource, DisableFilterEventResource
from bokeh_server.RenderData.actions.GodografEventsResource import ChangeGainEventResource, ChangeHeightEventResource, \
    ChangeTypeGodografEventResource
from bokeh_server.RenderData.actions.NormalizationResource import NormalizationEventResource
from bokeh_server.RenderData.godografs.GodografResource import (
    StartGodografEventResource,
    EndGodografEventResource,
    ChangeGodografEventResource, DownloadGodografEventResource, LoadGodografResource,
)
from bokeh_server.RenderData.resource import RenderDataResource


def create_application():
    from bokeh_server.bokeh_server_main import app

    app.add_route("/open_files", OpenedFileResource())
    app.add_route("/render_data", RenderDataResource())
    app.add_route("/start_godograf_event", StartGodografEventResource())
    app.add_route("/end_godograf_event", EndGodografEventResource())
    app.add_route("/change_godograf_event", ChangeGodografEventResource())
    app.add_route("/download_godograf_event", DownloadGodografEventResource())
    app.add_route("/load_godograf_event", LoadGodografResource())
    app.add_route("/set_normalization", NormalizationEventResource())
    app.add_route("/applay_filter", FilterEventResource())
    app.add_route("/disable_filter", DisableFilterEventResource())
    app.add_route("/change_gain", ChangeGainEventResource())
    app.add_route("/change_height", ChangeHeightEventResource())
    app.add_route("/change_type_godograf", ChangeTypeGodografEventResource())
    app.add_route("/info", InfoResource())

    # app.add_route("/open_files/{name:str}", OpenedFileItemResource)
    return app
