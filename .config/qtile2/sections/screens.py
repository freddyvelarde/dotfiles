from libqtile import bar
from libqtile.config import Screen
from .widgets import init_primary_widgets, init_secondary_widgets
from theme.colors import colors  # import theme.colors couldn't... >>> ignore that error
from theme.global_styles import margin

#  from libqtile.log_utils import logger

#  import subprocess
#
#  xrandr = "xrandr | grep -w 'connected' | cut -d ' ' -f 2 | wc -l"
#  monitor_counter = int(subprocess.check_output(xrandr, shell=True).decode().strip())


def status_bar(widget):
    return bar.Bar(
        widget,
        24,
        margin=[5, margin, 5, margin],
        background=colors["background"],
        border_width=[7, 10, 7, 10],
        border_color=colors["background"],
    )

    #  Screen(top=status_bar(init_widgets())),
    #  Screen(
    #      top=bar.Bar(
    #          init_widgets(),
    #          24,
    #          margin=[5, margin, 5, margin],
    #          background=colors["background"],
    #          border_width=[7, 10, 7, 10],
    #          border_color=colors["background"],
    #      )
    #  ),


screens = [
    Screen(top=status_bar(init_primary_widgets())),
    Screen(top=status_bar(init_secondary_widgets())),
]
#  xrandr = "xrandr | grep -w 'connected' | cut -d ' ' -f 2 | wc -l"
#
#  command = subprocess.run(
#      xrandr,
#      shell=True,
#      stdout=subprocess.PIPE,
#      stderr=subprocess.PIPE,
#  )
#
#  if command.returncode != 0:
#      error = command.stderr.decode("UTF-8")
#      logger.error(f"Failed counting monitors using {xrandr}:\n{error}")
#      connected_monitors = 1
#  else:
#      connected_monitors = int(command.stdout.decode("UTF-8"))
#
#  if connected_monitors > 1:
#      for _ in range(1, connected_monitors):
#          screens.append(Screen(top=status_bar(init_secondary_widgets())))
#  screens = multiple_screens.copy()
#  for _ in range(monitor_counter - 1):
#      screens.append(
#          Screen(
#              top=bar.Bar(
#                  init_widgets(),
#                  24,
#                  margin=[5, margin, 5, margin],
#                  background=colors["background"],
#                  border_width=[7, 10, 7, 10],
#                  border_color=colors["background"],
#              ),
#          )
#      )
