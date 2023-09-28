#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bars
polybar bar1 --config=~/.config/polybar/config.ini & disown
polybar bar2 --config=~/.config/polybar/config.ini & disown
