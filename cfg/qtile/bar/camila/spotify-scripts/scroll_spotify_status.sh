#!/bin/bash
#
#
zscroll "$(playerctl metadata --format 'Now playing: {{ artist }} - {{ album }} - {{ title }}')" -b " " -l 30 -d 0.1

# see man zscroll for documentation of the following parameters
# zscroll -l 30 \
#         --delay 0.1 \
#         --scroll-padding "  " \
#         --match-command "`dirname $0`/get_spotify_status.sh --status" \
#         --match-text "Playing" "--scroll 1" \
#         --match-text "Paused" "--scroll 0" \
#         --update-check true "`dirname $0`/get_spotify_status.sh" &
#
# wait
#!/bin/sh
# if ! mpc >/dev/null 2>&1; then
# echo Server Offline
# exit 1
# elif mpc status | grep -q playing; then
# (mpc current | zscroll --before-text "" --delay 0.3 \
# --match-command "mpc status" \
# --match-text "playing" "--before-text '' --scroll 1" \
# --match-text "paused" "--before-text ' ' --scroll 0" \
# --match-text "stopped" "--before-text ' '" \
# --length 15 \
# --update-check true "mpc current" &)
# else
# (echo "" &)
# fi
# # Block until an event is emitted
# mpc idle >/dev/null
