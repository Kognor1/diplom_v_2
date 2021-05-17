import os
from enum import Enum

LOGGING_LEVEL = os.environ.get("LOGGING_LEVEL", "DEBUG").upper()
LOGGING_FORMAT = (
    "%(asctime) %(created) %(filename) %(funcName) %(levelname) "
    "%(lineno) %(module) %(message) %(name) %(thread) %(threadName)"
)
CONSOLE_LOGGING_FORMAT = (
    "%(asctime)s %(levelname)s [%(thread)s %(threadName)s] %(name)s %(module)s.%(funcName)s:%(lineno)s: %(message)s"
)
LOGGING = {
    "version": 1,
    "disable_existing_loggers": True,
    "formatters": {
        "json": {"()": "pythonjsonlogger.jsonlogger.JsonFormatter", "format": LOGGING_FORMAT},
        "plain": {"format": CONSOLE_LOGGING_FORMAT},
    },
    "handlers": {
        "console": {"class": "logging.StreamHandler", "formatter": "plain", "level": LOGGING_LEVEL},
        # "file": {
        #     "class": "logging.handlers.RotatingFileHandler",
        #     "filename": "logs/server.log",
        #     "mode": "a",
        #     "maxBytes": 1048576,
        #     "backupCount": 10,
        #     "formatter": "json",
        #     "level": LOGGING_LEVEL,
        # },
    },
    "root": {"handlers": ["console"], "level": LOGGING_LEVEL},
    # "root": {"handlers": ["console", "file"], "level": LOGGING_LEVEL},
}

server_url = "http://127.0.0.1:8000"

bokeh_port = 5000


class SliderConfig(Enum):
    MIN_VALUE = -99.0
    MAX_VALUE = 100.0
    STEP = 0.01
    DEFAULT_SIZE = 50
    START_VALUE = 1.0
