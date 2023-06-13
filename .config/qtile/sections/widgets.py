from libqtile import widget, qtile, bar
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from global_variables import terminal, rofi_applets


def open_htop():
    qtile.cmd_spawn(terminal + " -e htop")


def open_network_menu():
    qtile.cmd_spawn(rofi_applets + "network_menu")


def open_rofi():
    qtile.cmd_spawn(rofi_applets + "rofi_launcher")


def open_powermenu():
    qtile.cmd_spawn(rofi_applets + "rofi_powermenu")


def icon(icon, bg=None, fg=None, event=None):
    return widget.TextBox(
        text=icon,  # Icon: nf-oct-triangle_left
        fontsize=20,
        foreground=fg,
        background=bg,
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


def init_primary_widgets():
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
        margin(),
        icon("", colors["btn2"], colors["background"]),
        widget.Clock(
            format="%d %m %Y",
            foreground=colors["background"],
            background=colors["btn2"],
            padding=5,
        ),
        margin(),
        icon("󰥔", colors["btn3"], colors["background"]),
        widget.Clock(
            format="%H:%M",
            foreground=colors["background"],
            background=colors["btn3"],
            padding=5,
        ),
        margin(),
        icon("󰤨", colors["btn4"], colors["background"], open_network_menu),
        widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
            format="{down} ↓↑ {up}",
            foreground=colors["background"],
            background=colors["btn4"],
            mouse_callbacks={"Button1": open_network_menu},
        ),
        # ------------------------
        widget.Spacer(length=bar.STRETCH),
        # ------------------------
        widget.GroupBox(
            highlight_method="text",
            font="UbuntuMono Nerd Font",
            fontsize=19,
            active=colors["active"],
            inactive=colors["inactive"],
            rounded=False,
            this_current_screen_border=colors["btn1"],  # current screen
            disable_drag=True,
        ),
        # ------------------------
        widget.Spacer(length=bar.STRETCH),
        # ------------------------
        widget.CurrentLayout(
            foreground=colors["background"],
            background=colors["btn4"],
        ),
        margin(),
        icon(" ", colors["btn3"], colors["background"]),
        widget.PulseVolume(
            background=colors["btn3"],
            foreground=colors["background"],
            volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
            volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
            padding=5,
        ),
        margin(),
        icon("󰍛", colors["btn2"], colors["background"], open_htop),
        widget.Memory(
            background=colors["btn2"],
            foreground=colors["background"],
            mouse_callbacks={"Button1": open_htop},
        ),
        margin(),
        widget.TextBox(
            text="⏻",  # Icon: nf-oct-triangle_left
            fontsize=20,
            foreground=colors["background"],
            background=colors["btn1"],
            padding=5,
            mouse_callbacks={"Button1": open_powermenu},
        ),
    ]
    return widgets


def init_secondary_widgets():
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
        margin(),
        icon("", colors["btn2"], colors["background"]),
        widget.Clock(
            format="%d %m %Y",
            foreground=colors["background"],
            background=colors["btn2"],
            padding=5,
        ),
        margin(),
        icon("󰥔", colors["btn3"], colors["background"]),
        widget.Clock(
            format="%H:%M",
            foreground=colors["background"],
            background=colors["btn3"],
            padding=5,
        ),
        margin(),
        icon("󰤨", colors["btn4"], colors["background"], open_network_menu),
        widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
            format="{down} ↓↑ {up}",
            foreground=colors["background"],
            background=colors["btn4"],
            mouse_callbacks={"Button1": open_network_menu},
        ),
        # ------------------------
        widget.Spacer(length=bar.STRETCH),
        # ------------------------
        widget.GroupBox(
            highlight_method="text",
            font="UbuntuMono Nerd Font",
            fontsize=19,
            active=colors["active"],
            inactive=colors["inactive"],
            rounded=False,
            this_current_screen_border=colors["btn1"],  # current screen
            disable_drag=True,
        ),
        # ------------------------
        widget.Spacer(length=bar.STRETCH),
        # ------------------------
        widget.CurrentLayout(
            foreground=colors["background"],
            background=colors["btn4"],
        ),
        margin(),
        icon(" ", colors["btn3"], colors["background"]),
        widget.PulseVolume(
            background=colors["btn3"],
            foreground=colors["background"],
            volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
            volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
            padding=5,
        ),
        margin(),
        icon("󰍛", colors["btn2"], colors["background"], open_htop),
        widget.Memory(
            background=colors["btn2"],
            foreground=colors["background"],
            mouse_callbacks={"Button1": open_htop},
        ),
        margin(),
        widget.TextBox(
            text="⏻",  # Icon: nf-oct-triangle_left
            fontsize=20,
            foreground=colors["background"],
            background=colors["btn1"],
            padding=5,
            mouse_callbacks={"Button1": open_powermenu},
        ),
    ]
    return widgets
