import os
import sqlite3
from peewee import SqliteDatabase


def create_bd():
    try:
        try:
            os.remove("sqlite_python.db")
        except FileExistsError as _:
            pass
        sqlite_connection = sqlite3.connect("sqlite_python.db")
        cursor = sqlite_connection.cursor()
        print("База данных создана и успешно подключена к SQLite")

        sqlite_select_query = "select sqlite_version();"
        cursor.execute(sqlite_select_query)
        record = cursor.fetchall()
        print("Версия базы данных SQLite: ", record)
        create_open_file_tables(cursor)
        cursor.close()

    except sqlite3.Error as error:
        print("Ошибка при подключении к sqlite", error)
    finally:
        if sqlite_connection:
            sqlite_connection.close()
            print("Соединение с SQLite закрыто")


def create_open_file_tables(cursor):
    open_files = """
        CREATE TABLE "open_files" (
        "file_name" TEXT NULL DEFAULT NULL,
        "full_path" TEXT NULL DEFAULT NULL
        )"""
    cursor.execute(open_files)
