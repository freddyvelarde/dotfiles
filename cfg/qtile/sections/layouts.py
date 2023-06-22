from libqtile import layout
from theme.colors import colors
from theme.global_styles import margin_vertical, margin_horizontal

layout_conf_max = {
    "border_width": 0,
    "margin": [margin_horizontal, margin_vertical, margin_horizontal, margin_vertical],
}
layout_conf_general = {
    "border_focus": colors["btn5"],
    "border_width": 1,
    "margin": [margin_horizontal, margin_vertical, margin_horizontal, margin_vertical],
}

layouts = [
    layout.Columns(**layout_conf_general),
    layout.Max(**layout_conf_max),
    #  layout.Stack(**layout_conf_general, num_stacks=3),
    #  layout.Bsp(**layout_conf),
    #  layout.Matrix(**layout_conf),
    #  layout.MonadTall(**layout_conf_general),
    #  layout.MonadWide(**layout_conf),
    #  layout.RatioTile(**layout_conf),
    #  layout.Tile(**layout_conf),
    #  layout.TreeTab(**layout_conf_max),
    #  layout.VerticalTile(**layout_conf),
    #  layout.Zoomy(**layout_conf),
]
