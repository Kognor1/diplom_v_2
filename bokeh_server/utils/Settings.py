from bokeh_server.utils.SingletonMeta import SingletonMeta


class SessionSettings(metaclass=SingletonMeta):
    def __init__(self):
        self.current_travels = None
        self.travels = {}

    def update_travels_settings(self, cell_name, picked=True):
        self.current_travels = cell_name
        self.travels[cell_name] = picked

    def get_picked_by_name(self, cell_name):
        if cell_name in self.travels:
            return self.travels[cell_name]
        else:
            return False
