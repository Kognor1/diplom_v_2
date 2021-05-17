import requests

from bokeh_server.settings import server_url


class SelectFileDao:
    @staticmethod
    def add_new_file(file_name: str, full_path: str):
        json_data = {"file_name": file_name, "full_path": full_path}
        requests.post(server_url + "/open_files", json=json_data)

    @staticmethod
    def start_bokeh_render():
        res = requests.get(server_url + "/render_data")
        return res.json()

    @staticmethod
    def get_opened_files():
        responce = requests.get(server_url + "/open_files")
        return responce.json()["files"]

    @staticmethod
    def file_is_open(name):
        responce = requests.get(server_url + f"/open_files/{name}")
        return responce.json()["exists"]
