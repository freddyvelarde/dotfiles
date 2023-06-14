from libqtile import layout
from theme.colors import colors
from theme.global_styles import margin

layout_conf_max = {"border_width": 0, "margin": margin}
layout_conf_general = {
    "border_focus": colors["primary"],
    "border_width": 2,
    "margin": margin,
}

layouts = [
    #  layout.Columns(**layout_conf),
    layout.Max(**layout_conf_max),
    #  layout.Stack(num_stacks=2),
    #  layout.Bsp(**layout_conf),
    #  layout.Matrix(**layout_conf),
    layout.MonadTall(**layout_conf_general),
    #  layout.MonadWide(**layout_conf),
    #  layout.RatioTile(**layout_conf),
    #  layout.Tile(**layout_conf),
    #  layout.TreeTab(**layout_conf),
    #  layout.VerticalTile(**layout_conf),
    #  layout.Zoomy(**layout_conf),
]
