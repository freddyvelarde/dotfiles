from libqtile import widget, qtile, bar
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from global_variables import terminal, rofi_applets


def open_htop():
    qtile.cmd_spawn(terminal + " -e htop")


def open_volume():
    qtile.cmd_spawn("pavucontrol")


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
        padding=10,
        foreground=colors["foreground"],
        background=colors["background"],
    )


def archzone_widgets():
    widgets = [
        widget.TextBox(
            text="",
            fontsize=25,
            rounded=True,
            foreground=colors["btn1"],
            width=30,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.TextBox(
            text="|",
            fontsize=25,
            rounded=True,
            foreground=colors["btn4"],
            padding=12,
            mouse_callbacks={"Button1": open_rofi},
        ),
        icon("", colors["background"], colors["btn2"]),
        widget.Clock(
            format="%d - %m - %Y",
            background=colors["background"],
            foreground=colors["btn2"],
            padding=5,
        ),
        margin(),
        icon("󰥔", colors["background"], colors["btn3"]),
        widget.Clock(
            format="%H:%M",
            background=colors["background"],
            foreground=colors["btn3"],
            padding=5,
        ),
        margin(),
        #  icon("󰤨", colors["background"], colors["btn4"], open_network_menu),
        #  widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
        #      format="{down} ↓↑ {up}",
        #      background=colors["background"],
        #      foreground=colors["btn4"],
        #      mouse_callbacks={"Button1": open_network_menu},
        #  ),
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
        icon("󱂬 ", colors["background"], colors["btn4"]),
        widget.CurrentLayout(
            background=colors["background"],
            foreground=colors["btn4"],
        ),
        margin(),
        icon(" ", colors["background"], colors["btn3"], open_volume),
        widget.Volume(
            foreground=colors["btn3"],
            background=colors["background"],
            volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
            volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
            padding=5,
            mouse_callbacks={"Button1": open_volume},
        ),
        #  widget.PulseVolume(
        #      foreground=colors["btn3"],
        #      background=colors["background"],
        #      volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
        #      volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
        #      padding=5,
        #      mouse_callbacks={"Button1": open_volume},
        #  ),
        margin(),
        icon("󰍛", colors["background"], colors["btn2"], open_htop),
        widget.Memory(
            foreground=colors["btn2"],
            background=colors["background"],
            mouse_callbacks={"Button1": open_htop},
        ),
        margin(),
        widget.Systray(),
        margin(),
        widget.TextBox(
            text="⏻",  # Icon: nf-oct-triangle_left
            fontsize=20,
            background=colors["background"],
            foreground=colors["btn1"],
            padding=5,
            mouse_callbacks={"Button1": open_powermenu},
        ),
    ]
    return widgets


def diana_widgets():  # diana widgets
    widgets = [
        widget.TextBox(
            text="",
            fontsize=25,
            rounded=True,
            foreground=colors["btn1"],
            width=30,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            rounded=True,
            foreground=colors["btn3"],
            padding=12,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.GroupBox(
            highlight_method="text",
            font="UbuntuMono Nerd Font",
            fontsize=19,
            active=colors["active"],
            inactive=colors["inactive"],
            rounded=False,
            this_current_screen_border=colors["foreground"],  # current screen
            disable_drag=True,
        ),
        widget.Spacer(length=bar.STRETCH),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["background"],
            background=colors["btn5"],
        ),
        icon("󱂬 ", colors["btn5"], colors["background"]),
        widget.CurrentLayout(
            foreground=colors["background"],
            background=colors["btn5"],
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn5"],
        ),
        # Volume
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["background"],
            background=colors["btn4"],
        ),
        icon(" ", colors["btn4"], colors["background"], open_volume),
        widget.PulseVolume(
            background=colors["btn4"],
            foreground=colors["background"],
            volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
            volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
            mouse_callbacks={"Button1": open_volume},
            padding=5,
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn4"],
        ),
        # Memory
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["background"],
            background=colors["btn3"],
        ),
        icon("󰍛", colors["btn3"], colors["background"], open_htop),
        widget.Memory(
            background=colors["btn3"],
            foreground=colors["background"],
            mouse_callbacks={"Button1": open_htop},
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn3"],
        ),
        # --------------- Date and Clock widget beggin
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["background"],
            background=colors["btn1"],
        ),
        icon("󰥔", colors["btn1"], colors["background"]),
        widget.Clock(
            format="%H:%M",
            background=colors["btn1"],
            foreground=colors["background"],
            padding=5,
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn1"],
            background=colors["btn1"],
        ),
        icon("", colors["btn1"], colors["background"]),
        widget.Clock(
            format="%d-%m-%Y",
            background=colors["btn1"],
            foreground=colors["background"],
            padding=5,
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn1"],
        ),
        margin(),
        widget.Systray(),
        margin(),
        widget.TextBox(
            text="⏻",  # Icon: nf-oct-triangle_left
            fontsize=20,
            foreground=colors["btn1"],
            padding=5,
            mouse_callbacks={"Button1": open_powermenu},
        ),
    ]
    return widgets


def marianne_widgets():  # marianne widgets
    widgets = [
        widget.TextBox(
            text="",
            fontsize=25,
            rounded=True,
            foreground=colors["btn1"],
            width=30,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            rounded=True,
            foreground=colors["btn3"],
            padding=12,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.GroupBox(
            highlight_method="text",
            font="UbuntuMono Nerd Font",
            fontsize=19,
            active=colors["active"],
            inactive=colors["inactive"],
            rounded=False,
            this_current_screen_border=colors["foreground"],  # current screen
            disable_drag=True,
        ),
        widget.Spacer(length=bar.STRETCH),
        widget.TextBox(
            text="󰍞",
            fontsize=63,
            padding=0,
            background=colors["background"],
            foreground=colors["btn5"],
        ),
        icon("󱂬 ", colors["btn5"], colors["background"]),
        widget.CurrentLayout(
            foreground=colors["background"],
            background=colors["btn5"],
        ),
        widget.TextBox(
            text="󰍞",
            fontsize=63,
            padding=0,
            foreground=colors["btn4"],
            background=colors["btn5"],
        ),
        # audio
        icon(" ", colors["btn4"], colors["background"], open_volume),
        widget.PulseVolume(
            background=colors["btn4"],
            foreground=colors["background"],
            volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
            volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
            mouse_callbacks={"Button1": open_volume},
            padding=5,
        ),
        widget.TextBox(
            text="󰍞",
            fontsize=63,
            padding=0,
            foreground=colors["btn3"],
            background=colors["btn4"],
        ),
        # Memory
        icon("󰍛", colors["btn3"], colors["background"], open_htop),
        widget.Memory(
            background=colors["btn3"],
            foreground=colors["background"],
            mouse_callbacks={"Button1": open_htop},
        ),
        #  widget.TextBox(
        #      text="󰍞",
        #      fontsize=63,
        #      padding=0,
        #      foreground=colors["btn2"],
        #      background=colors["btn3"],
        #  ),
        #  # ---------- Internet connection
        #  icon("󰤨", colors["btn2"], colors["background"], open_network_menu),
        #  widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
        #      format="{down} ↓↑ {up}",
        #      background=colors["btn2"],
        #      foreground=colors["background"],
        #      mouse_callbacks={"Button1": open_network_menu},
        #  ),
        widget.TextBox(
            text="󰍞",
            fontsize=63,
            padding=0,
            foreground=colors["btn1"],
            background=colors["btn3"],
        ),
        # --------------- Date and Clock widget beggin
        icon("󰥔", colors["btn1"], colors["background"]),
        widget.Clock(
            format="%H:%M",
            background=colors["btn1"],
            foreground=colors["background"],
            padding=5,
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn1"],
            background=colors["btn1"],
        ),
        icon("", colors["btn1"], colors["background"]),
        widget.Clock(
            format="%d-%m-%Y",
            background=colors["btn1"],
            foreground=colors["background"],
            padding=5,
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn1"],
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["background"],
            background=colors["btn1"],
        ),
        widget.Systray(
            background=colors["btn1"],
            foreground=colors["background"],
        ),
        widget.TextBox(
            text="⏻",  # Icon: nf-oct-triangle_left
            fontsize=20,
            background=colors["btn1"],
            foreground=colors["background"],
            padding=5,
            mouse_callbacks={"Button1": open_powermenu},
        ),
        widget.TextBox(
            text="",
            fontsize=25,
            padding=0,
            foreground=colors["btn1"],
            background=colors["background"],
        ),
    ]
    return widgets
