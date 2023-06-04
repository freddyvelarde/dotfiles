from libqtile.config import Screen
from libqtile import bar, widget, qtile
from libqtile.lazy import lazy
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from global_variables import rofi_applets


def open_rofi():
    qtile.cmd_spawn(rofi_applets + "rofi_launcher")
    #  qtile.cmd_spawn("~/.config/qtile/scripts/rofi_launcher")
    #  lazy.spawn("~/.config/qtile/scripts/rofi_launcher")


screens = [
    Screen(
        top=bar.Bar(
            [
                widget.TextBox(
                    #  **base(fg, bg),
                    #  text="",  # Icon: nf-oct-triangle_left
                    text="",  # Icon: nf-oct-triangle_left
                    fontsize=25,
                    foreground=colors["background"],
                    background=colors["btn1"],
                    width=47,
                    padding=12,
                    mouse_callbacks={"Button1": open_rofi},
                ),
                widget.TextBox(
                    #  **base(fg, bg),
                    #  text="",  # Icon: nf-oct-triangle_left
                    #  text="",  # Icon: nf-oct-triangle_left
                    #  text="",  # Icon: nf-oct-triangle_left
                    fontsize=30,
                    foreground=colors["foreground"],
                ),
                #  widget.CurrentLayout(
                #      background=colors["btn1"],
                #      font="JetBrainsMono-Regular",
                #      foreground=colors["background"],
                #  ),
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
            border_width=[10, 10, 10, 10],
            border_color=colors["background"],
        ),
    ),
]
