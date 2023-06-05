from libqtile.config import Screen
from libqtile import bar, widget, qtile
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from global_variables import rofi_applets, terminal
from scripts.internet import network_info


def open_rofi():
    qtile.cmd_spawn(rofi_applets + "rofi_launcher")


network = network_info()


screens = [
    Screen(
        top=bar.Bar(
            [
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
                widget.TextBox(
                    text="",  # Icon: nf-oct-triangle_left
                    fontsize=30,
                    foreground=colors["foreground"],
                    padding=15,
                ),
                #  widget.CurrentLayout(
                #      background=colors["btn1"],
                #      font="JetBrainsMono-Regular",
                #      foreground=colors["background"],
                #  ),
                widget.GroupBox(highlight_method="text"),
                #  widget.WindowName(),
                widget.DF(
                    partition="/home",
                    foreground=colors["background"],
                    background=colors["btn2"],
                ),
                #  widget.TextBox(
                #      text=network["icon"],
                #      fontsize=20,
                #      foreground=colors["background"],
                #      background=colors["btn2"],
                #      padding=5,
                #  ),
                #  widget.TextBox(
                #      text=network["network_name"],
                #      #  fontsize=20,
                #      foreground=colors["background"],
                #      background=colors["btn2"],
                #      padding=5,
                #  ),
                #  widget.Net(
                #      display="wlan0",
                #      foreground=colors["background"],
                #      background=colors["btn2"],
                #      padding=5,
                #  ),
                #  widget.Systray(background=colors["btn2"], padding=5),
                widget.Sep(
                    linewidth=0,
                    padding=6,
                    foreground=colors["foreground"],
                    background=colors["background"],
                ),
                widget.TextBox(
                    text="",  # Icon: nf-oct-triangle_left
                    fontsize=20,
                    foreground=colors["background"],
                    background=colors["btn2"],
                    padding=5,
                ),
                widget.PulseVolume(
                    foreground=colors["background"],
                    background=colors["btn2"],
                    volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
                    volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
                    #  fmt="{}%",
                    padding=5,
                ),
                widget.Sep(
                    linewidth=0,
                    padding=6,
                    foreground=colors["foreground"],
                    background=colors["background"],
                ),
                widget.TextBox(
                    text="󰍛",  # Icon: nf-oct-triangle_left
                    fontsize=20,
                    foreground=colors["background"],
                    background=colors["btn2"],
                    padding=5,
                ),
                widget.Memory(  # for this widget you need to install `psutil`
                    foreground=colors["background"],
                    background=colors["btn2"],
                    mouse_callbacks={
                        "Button1": lambda: qtile.cmd_spawn(terminal + " -e htop")
                    },
                    padding=5,
                    border_width=[0, 0, 2, 0],
                    padding_x=5,
                    padding_y=None,
                ),
                widget.Sep(
                    linewidth=0,
                    padding=6,
                    foreground=colors["foreground"],
                    background=colors["background"],
                ),
                widget.Clock(
                    format="%H:%M",
                    foreground=colors["background"],
                    background=colors["btn2"],
                    padding=5,
                ),
                widget.Sep(
                    linewidth=0,
                    padding=6,
                    foreground=colors["foreground"],
                    background=colors["background"],
                ),
                widget.QuickExit(),
            ],
            24,
            margin=10,
            background=colors["background"],
            border_width=[10, 10, 10, 10],
            border_color=colors["background"],
        ),
    ),
]
