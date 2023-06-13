from .colorschemes import diana, brisdenka, spiderverse, archhack, dark_city
from global_variables import qtile_path

import os

_colorschemes = {
    "diana": diana,
    "brisdenka": brisdenka,
    "spiderverse": spiderverse,
    "archhack": archhack,
    "dark_city": dark_city,
}


def _theme_name():
    content = ""
    file_path = os.path.expanduser(qtile_path + "/theme/theme_name.txt")
    with open(file_path, "r") as file:
        content = file.read().strip()
    return content


def _load_theme(theme_name):
    return _colorschemes[theme_name]


_theme = _theme_name()
colors = _load_theme(_theme)
