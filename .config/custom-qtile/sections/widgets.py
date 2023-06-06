from libqtile import widget, qtile
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from global_variables import terminal, rofi_applets


def open_rofi():
    qtile.cmd_spawn(rofi_applets + "rofi_launcher")


def open_powemenu():
    qtile.cmd_spawn(rofi_applets + "rofi_powermenu")


def icon(icon, event=None):
    return widget.TextBox(
        text=icon,  # Icon: nf-oct-triangle_left
        fontsize=20,
        foreground=colors["background"],
        background=colors["btn2"],
        padding=5,
        mouse_callbacks={"Button1": event},
    )


def margin():
    return widget.Sep(
        linewidth=0,
        padding=6,
        foreground=colors["foreground"],
        background=colors["background"],
    )


def clock_format():
    #  a = True
    #  if a:
    #  return "%H:%M"
    return "%d/%m/%y"


widgets = [
    widget.TextBox(
        text="",
        fontsize=25,
        rounded=True,
        foreground=colors["background"],
        background=colors["btn1"],
        width=47,
        padding=12,
        mouse_callbacks={"Button1": open_rofi},
    ),
    #  icon(""),
    widget.GroupBox(highlight_method="text"),
    widget.Clock(
        format="%H:%M",
        foreground=colors["background"],
        background=colors["btn2"],
        padding=5,
        mouse_callbacks={"Button1": open_rofi},
    ),
    margin(),
    #  icon(""),
    icon(" "),
    widget.PulseVolume(
        foreground=colors["background"],
        background=colors["btn2"],
        volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
        volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
        padding=5,
    ),
    margin(),
    icon("󰍛"),
    widget.Memory(
        foreground=colors["background"],
        background=colors["btn2"],
        mouse_callbacks={"Button1": lambda: qtile.cmd_spawn(terminal + " -e htop")},
        #  border_width=[0, 0, 2, 0],
    ),
    margin(),
    #  icon(""),
    icon(
        "󰤨"
    ),  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
    widget.Net(
        interface="enp37s0",
        format="{down} ↓↑ {up}",
        foreground=colors["background"],
        background=colors["btn2"],
        mouse_callbacks={
            "Button1": lambda: qtile.cmd_spawn(rofi_applets + "network_menu")
        },
    ),
    margin(),
    widget.TextBox(
        text="⏻",  # Icon: nf-oct-triangle_left
        fontsize=20,
        foreground=colors["background"],
        background=colors["btn2"],
        padding=5,
        mouse_callbacks={"Button1": open_powemenu},
    ),
]
