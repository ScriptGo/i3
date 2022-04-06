#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar

polybar -r -c ~/.config/polybar/config.ini date&
polybar -r -c ~/.config/polybar/config.ini wm&
polybar -r -c ~/.config/polybar/config.ini system&
