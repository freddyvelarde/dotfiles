import os


class Directory:
    def __init__(self) -> None:
        self.current_directory = os.getcwd()

    def get_current_directory(self) -> str:
        return self.current_directory

    def merge_paths(self, path):
        new_path = os.path.join(self.get_current_directory(), path)
        return new_path
