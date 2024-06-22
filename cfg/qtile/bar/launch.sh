#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
CARD="$(light -L | grep 'backlight' | head -n1 | cut -d'/' -f3)"
INTERFACE="$(ip link | awk '/state UP/ {print $2}' | tr -d :)"
RFILE="$DIR/.module"

fix_modules() {
	if [[ -z "$CARD" ]]; then
		sed -i -e 's/backlight/bna/g' "$DIR"/config.ini
	elif [[ "$CARD" != *"intel_"* ]]; then
		sed -i -e 's/backlight/brightness/g' "$DIR"/config.ini
	fi

	if [[ "$INTERFACE" == e* ]]; then
		sed -i -e 's/network/ethernet/g' "$DIR"/config.ini
	fi
}

launch_bar() {
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

	# Launch the bar
	# for mon in $(polybar --list-monitors | cut -d":" -f1); do
  #   MONITOR=$mon polybar -q main -c "$DIR"/config.ini &
	# done
  # polybar --config=~/.config/qtile/bar/pacman/config.ini main &
  # polybar --config=~/.config/qtile/bar/pacman/config.ini secondary &
  
  # polybar --config=~/.config/qtile/bar/pacman/config.ini main &
  polybar --config=~/.dotfiles/cfg/qtile/bar/config.ini main &

}

# Execute functions
if [[ ! -f "$RFILE" ]]; then
	fix_modules
	touch "$RFILE"
fi	
launch_bar
