#  from ..theme.colors import colors
from libqtile.config import Screen
from libqtile import bar, widget, qtile
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error


def open_rofi():
    qtile.cmd_spawn("kitty -e htop")


screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(),
                widget.WindowName(),
                widget.Systray(),
                widget.Volume(
                    mouse_callbacks={"Button1": open_rofi},
                ),
                widget.QuickExit(),
            ],
            24,
            background=colors["background"],
            border_width=[10, 4, 10, 4],
            border_color=colors["background"],
        ),
    ),
]
