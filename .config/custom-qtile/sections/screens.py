from libqtile import bar
from libqtile.config import Screen
from .widgets import widgets
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
import subprocess

xrandr = "xrandr | grep -w 'connected' | cut -d ' ' -f 2 | wc -l"
monitor_counter = int(subprocess.check_output(xrandr, shell=True).decode().strip())

screens = []

for _ in range(monitor_counter):
    screens.append(
        Screen(
            top=bar.Bar(
                widgets,
                24,
                margin=7,
                background=colors["background"],
                #  background="#00000000",
                border_width=[10, 10, 10, 10],
                border_color=colors["background"],
            ),
        )
    )
