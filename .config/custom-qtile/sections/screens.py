from libqtile import bar
from libqtile.config import Screen
from .widgets import widgets
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from theme.global_styles import margin
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
                margin=[5, margin, 5, margin],
                background=colors["background"],
                border_width=[7, 10, 7, 10],
                border_color=colors["background"],
            ),
        )
    )
