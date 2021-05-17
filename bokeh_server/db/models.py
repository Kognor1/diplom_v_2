import os

from peewee import Model, TextField, PrimaryKeyField, SqliteDatabase, ForeignKeyField
from playhouse.sqlite_ext import JSONField

try:
    os.remove("sqlite_python.db")
except FileNotFoundError as e:
    pass
dbhandle = SqliteDatabase("sqlite_python.db")


class BaseModel(Model):
    class Meta:
        database = dbhandle


class OpenedFile(BaseModel):
    id = PrimaryKeyField()
    file_name = TextField(null=False)
    full_path = TextField(null=False)

    class Meta:
        table_name = "opened_files"

    @classmethod
    def create(cls, file_name: str, full_path: str):
        return super().create(file_name=file_name, full_path=full_path)
