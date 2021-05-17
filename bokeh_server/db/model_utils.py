import dataclasses
import uuid
from datetime import datetime, date
from decimal import Decimal
from enum import Enum
from typing import Any

from peewee import ModelSelect, Model
from playhouse.shortcuts import model_to_dict


def format_datetime_iso(dt: datetime) -> str:
    return dt.isoformat() if dt is not None else ""


def format_date_iso(dt: date) -> str:
    return dt.isoformat() if dt is not None else ""


def format_values(o: dict) -> dict:
    for key, value in o.items():
        if isinstance(value, Decimal):
            o[key] = str(value)
        elif isinstance(value, datetime):
            o[key] = format_datetime_iso(value)
        elif isinstance(value, date):
            o[key] = format_date_iso(value)
        elif isinstance(value, uuid.UUID):
            o[key] = value.hex
        elif isinstance(value, dict):
            o[key] = format_values(value)
        elif isinstance(value, Enum):
            o[key] = str(value.value)
        elif dataclasses.is_dataclass(value):
            o[key] = format_values(dataclasses.asdict(value))
    return o


def to_json(o: object) -> Any:
    if isinstance(o, ModelSelect):
        items = list(o)
        if len(items) == 0:
            return []

        if isinstance(items[0], dict):
            return [format_values(i) for i in items]

        if isinstance(items[0], Model):
            return [format_values(model_to_dict(i)) for i in items]

    if isinstance(o, Model):
        return format_values(model_to_dict(o))

    if isinstance(o, list):
        return [format_values(i) for i in o]

    if isinstance(o, dict):
        return format_values(o)

    if dataclasses.is_dataclass(o):
        return format_values(dataclasses.asdict(o))

    return o
