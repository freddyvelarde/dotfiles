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
            #  background=colors["btn1"],
            width=30,
            #  padding=20,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.TextBox(
            text="|",
            fontsize=25,
            rounded=True,
            foreground=colors["btn4"],
            #  background=colors["btn1"],
            #  width=47,
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
        icon("󰤨", colors["background"], colors["btn4"], open_network_menu),
        widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
            format="{down} ↓↑ {up}",
            background=colors["background"],
            foreground=colors["btn4"],
            mouse_callbacks={"Button1": open_network_menu},
        ),
        # ------------------------
        widget.Spacer(length=bar.STRETCH),
        # ------------------------
        widget.GroupBox(
            highlight_method="text",
            font="UbuntuMono Nerd Font",
            fontsize=19,
            #  background=colors["btn5"],
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
            background=colors["background"],
            foreground=colors["btn4"],
        ),
        margin(),
        icon(" ", colors["background"], colors["btn3"]),
        widget.PulseVolume(
            foreground=colors["btn3"],
            background=colors["background"],
            volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
            volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
            padding=5,
        ),
        margin(),
        icon("󰍛", colors["background"], colors["btn2"], open_htop),
        widget.Memory(
            foreground=colors["btn2"],
            background=colors["background"],
            mouse_callbacks={"Button1": open_htop},
        ),
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


def neon_widgets():
    widgets = [
        widget.TextBox(
            text="",
            fontsize=25,
            rounded=True,
            foreground=colors["btn1"],
            #  background=colors["btn1"],
            width=30,
            #  padding=20,
            mouse_callbacks={"Button1": open_rofi},
        ),
        widget.TextBox(
            text="|",
            fontsize=25,
            rounded=True,
            foreground=colors["btn4"],
            #  background=colors["btn1"],
            #  width=47,
            padding=12,
            mouse_callbacks={"Button1": open_rofi},
        ),
        margin(),
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
        # --------------- Date and Clock widget beggin
        widget.Spacer(length=bar.STRETCH),
        #  widget.TextBox(
        #      text="",
        #      fontsize=20,
        #      #  background=colors["btn3"],
        #      foreground=colors["btn2"],
        #      padding=0,
        #  ),
        icon("", colors["background"], colors["btn2"]),
        widget.Clock(
            format="%d %m %Y",
            foreground=colors["btn2"],
            background=colors["background"],
            padding=5,
        ),
        #  margin(),
        icon("󰥔", colors["background"], colors["btn2"]),
        widget.Clock(
            format="%H:%M",
            foreground=colors["btn2"],
            background=colors["background"],
            padding=5,
        ),
        #  widget.TextBox(
        #      text="",
        #      fontsize=20,
        #      padding=0,
        #      foreground=colors["btn2"],
        #  ),
        widget.Spacer(length=bar.STRETCH),
        # --------------- Date and Clock widget end
        #  widget.TextBox(
        #      text="",
        #      fontsize=20,
        #      #  background=colors["btn3"],
        #      foreground=colors["btn5"],
        #      padding=0,
        #  ),
        icon("󰤨", colors["background"], colors["btn5"], open_network_menu),
        widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
            format="{down} ↓↑ {up}",
            foreground=colors["btn5"],
            background=colors["background"],
            mouse_callbacks={"Button1": open_network_menu},
        ),
        # ------------------------
    ]
    return widgets
