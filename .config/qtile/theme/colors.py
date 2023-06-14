from .colorschemes import Diana, Marianne, archzone
from global_variables import qtile_path

import os

_colorschemes = {
    "Diana": Diana,
    "Marianne": Marianne,
    "archzone": archzone,
}


def _theme_name():
    content = ""
    file_path = os.path.expanduser(qtile_path + "/theme/theme_name.txt")
    with open(file_path, "r") as file:
        content = file.read().strip()
    return content


def _load_theme(theme_name):
    return _colorschemes[theme_name]


theme = _theme_name()
colors = _load_theme(theme)
