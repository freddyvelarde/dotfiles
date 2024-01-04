from .colorschemes import Diana, Marianne, archzone, camila, pacman

# from global_variables import qtile_path

import os

_colorschemes = {
    "Diana": Diana,
    "Marianne": Marianne,
    "camila": camila,
    "archzone": archzone,
    "pacman": pacman,
}


def _theme_name():
    content = ""
    file_path = os.path.expanduser("~" + "/.rice.conf")
    with open(file_path, "r") as file:
        content = file.read().strip()
    return content


def _load_theme(theme_name):
    return _colorschemes[theme_name]


theme = _theme_name()
colors = _load_theme(theme)
