# from sections.screens import screens
from libqtile import bar
from libqtile.config import Screen

from sections.keys import keys
from sections.groups import groups
from sections.layouts import layouts
from sections.mouse import mouse

from libqtile import hook
import subprocess
from global_variables import qtile_path

var_gap_top = 0
var_gap_bottom = 0
var_gap_left = 0
var_gap_right = 0

screens = [
    Screen(
        right=bar.Gap(var_gap_right),
        left=bar.Gap(var_gap_left),
        bottom=bar.Gap(var_gap_bottom),
        top=bar.Gap(var_gap_top),
    )
]


## Startup ------------------------------
@hook.subscribe.startup_once
def autostart():
    subprocess.Popen([qtile_path + "/scripts/autostart"])


widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

###
###

#  main = None
#  dgroups_key_binder = None
#  dgroups_app_rules = []
#  follow_mouse_focus = True
#  bring_front_click = False
#  cursor_warp = True
#  auto_fullscreen = True
#  focus_on_window_activation = "urgent"
#  wmname = "LG3D"

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False

auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

auto_minimize = True

wl_input_rules = None

wmname = "LG3D"
