#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar
polybar -c ~/.config/polybar/config.init 2>&1

notify-send "Polybar" "Starting..."
