#!/bin/bash

# Check if any players are found
if [[ $(playerctl status) == 'No players found' ]] ; then
    echo '  '
else
  # Check the status of the player using playerctl
  if [[ $(playerctl status) != 'Playing' ]]; then
    # If the player is not playing, print '' (play symbol)
    echo '  '
  else
    # If the player is playing, print '' (pause symbol)
    echo '  '
  fi
fi

