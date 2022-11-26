#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar
# polybar -c ~/.config/polybar/config.init 2>&1
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/config.init 2>&1 &
done
