import json
from datetime import datetime
from decimal import Decimal
from uuid import UUID

import falcon


class CustomEncoder(json.JSONEncoder):
    def default(self, o):  # pragma: nocover
        if isinstance(o, datetime):
            return o.isoformat()
        if isinstance(o, Decimal):
            return f"{o.normalize():f}"
        if isinstance(o, UUID):
            return o.hex
        return json.JSONEncoder.default(self, o)


class JsonMiddleware(object):
    def __init__(self, help_messages=True):
        """help_messages: display validation/error messages"""
        self.debug = bool(help_messages)

    def process_request(self, req, resp):
        """Middleware request"""
        req.json = {}

        if not req.content_length:
            return

        body = req.bounded_stream
        self.req = req

        try:
            req.json = json.load(body)
        except UnicodeDecodeError:
            raise falcon.HTTPBadRequest("Invalid encoding", "Could not decode as UTF-8")
        except ValueError:
            raise falcon.HTTPBadRequest("Malformed JSON", "Syntax error")

    def process_response(self, req, resp, resource, req_succeeded):
        """Middleware response"""
        if getattr(resp, "json", None) is not None:
            resp.set_header("X-Total-Count", len(resp.json))
            resp.body = str.encode(json.dumps(resp.json, cls=CustomEncoder))
