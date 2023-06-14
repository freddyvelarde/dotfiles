from libqtile.lazy import lazy
from libqtile.config import Group, Key
from sections.keys import keys  # >> ignore this error
from global_variables import mod

#  groups = [Group(i) for i in "123456789"]
group_names = [
    "1",
    "2",
    "3",
    "4",
    "5",
]

groups = []

group_labels = [
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
]

group_layouts = [
    "max",
    "max",
    "max",
    "max",
    "max",
    "max",
]

group_match_apps = ["firefox"]

for i in range(len(group_names)):
    groups.append(
        Group(
            name=group_names[i],
            layout=group_layouts[i].lower(),
            label=group_labels[i],
            #  match=[Match(wm_class=[group_match_apps[i]])],
        )
    )


for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            #  mod1 + shift + letter of group = move focused window to group
            #  Key(
            #      [mod, "shift"],
            #      i.name,
            #      lazy.window.togroup(i.name),
            #      desc="move focused window to group {}".format(i.name),
            #  ),
        ]
    )
