from libqtile import layout
from theme.colors import colors
from theme.global_styles import margin

layout_conf = {"border_focus": colors["background"], "border_width": 1, "margin": 4}

layouts = [
    #  layout.Columns(border_focus_stack=["#d75f5f", "#8f3d3d"], border_width=4),
    layout.Max(margin=[0, margin, 0, margin]),
    #  layout.Stack(num_stacks=2),
    #  layout.Bsp(),
    #  layout.Matrix(),
    layout.MonadTall(**layout_conf),
    #  layout.MonadWide(),
    #  layout.RatioTile(),
    #  layout.Tile(),
    #  layout.TreeTab(),
    #  layout.VerticalTile(),
    #  layout.Zoomy(),
]
