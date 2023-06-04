from .colorschemes.marianne import marianne
import os

colorschemes = {"marianne": marianne}


def _theme_name():
    content = ""
    file_path = os.path.expanduser(
        "~/.config/custom-qtile/theme/colorschemes/theme_name.txt"
    )
    with open(file_path, "r") as file:
        content = file.read().strip()
    return content


def _load_theme(theme_name):
    return colorschemes[theme_name]


#  _theme = _theme_name()
#  colors = _load_theme(_theme)
#  print(colors)
if __name__ == "theme":
    _theme = _theme_name()
    colors = _load_theme(_theme)
