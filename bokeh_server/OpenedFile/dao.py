from bokeh_server.db.models import OpenedFile


class OpenedFileDao:
    @staticmethod
    def get_opened_files():
        return OpenedFile.select().execute()

    @staticmethod
    def create_new_file(file_name, full_path):
        return OpenedFile.create(file_name, full_path)
