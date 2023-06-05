from libqtile import hook
import subprocess
from global_variables import qtile_path


## Startup ------------------------------
@hook.subscribe.startup_once
def autostart():
    subprocess.Popen([qtile_path + "/scripts/autostart"])


from sections.keys import keys
from sections.groups import groups
from sections.layouts import layouts
from sections.screens import screens


widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

###
###


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
