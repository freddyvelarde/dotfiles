#!/bin/bash

input=$1


echo "$input" > ~/.config/qtile/theme/theme_name.txt 
qtile cmd-obj -o cmd -f reload_config
~/.config/qtile/scripts/wallpaper
