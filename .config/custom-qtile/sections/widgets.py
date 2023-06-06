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
    icon("󰥔", colors["tertiary"], colors["background"]),
    widget.Clock(
        format="%H:%M",
        foreground=colors["background"],
        background=colors["tertiary"],
        padding=5,
    ),
    margin(),
    icon("󰤨", colors["primary"], colors["background"], open_network_menu),
    widget.Net(  # you need to install the 'gi' module, in arch: `sudo pacman -S python-gobject`
        interface="enp37s0",
        format="{down} ↓↑ {up}",
        foreground=colors["background"],
        background=colors["primary"],
        mouse_callbacks={"Button1": open_network_menu},
    ),
    # ------------------------
    widget.Spacer(length=bar.STRETCH),
    # ------------------------
    widget.GroupBox(
        highlight_method="text",
        font="UbuntuMono Nerd Font",
        fontsize=19,
        #  margin_y=3,
        #  margin_x=0,
        #  padding_y=8,
        #  padding_x=5,
        #  borderwidth=1,
        active=colors["text"],
        inactive=colors["text"],
        rounded=False,
        #  highlight_method="block",
        urgent_alert_method="block",
        urgent_border=colors["text"],
        this_current_screen_border=colors["btn1"],
        #  this_screen_border=colors["grey"],
        other_current_screen_border=colors["btn2"],
        #  other_screen_border=colors["dark"],
        disable_drag=True,
    ),
    # ------------------------
    widget.Spacer(length=bar.STRETCH),
    # ------------------------
    icon(" ", colors["primary"], colors["background"]),
    widget.PulseVolume(
        background=colors["primary"],
        foreground=colors["background"],
        volume_down_command="pactl set-sink-volume @DEFAULT_SINK@ -10%",
        volume_up_command="pactl set-sink-volume @DEFAULT_SINK@ +10%",
        padding=5,
    ),
    margin(),
    icon("󰍛", colors["tertiary"], colors["background"], open_htop),
    widget.Memory(
        background=colors["tertiary"],
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
