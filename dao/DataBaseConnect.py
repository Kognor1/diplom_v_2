import sqlite3


class DataBaseConnect:
    def __init__(self):
        self.cursor = None

    def __enter__(self):
        self.sqlite_connection = sqlite3.connect("sqlite_python.db")
        self.cursor = self.sqlite_connection.cursor()
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.cursor.close()
        self.sqlite_connection.close()
