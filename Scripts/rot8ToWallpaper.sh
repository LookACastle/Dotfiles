#!/bin/bash
set -e

if [ "$ORIENTATION" = "90" ] || [ "$ORIENTATION" = "270" ]; then
	notify-send --expire-time=5000 "Portrait mode"
	swaymsg output eDP-1 bg ~/.tallbackground fill
else
	notify-send --expire-time=5000 "Landscape mode"
	swaymsg output eDP-1 bg ~/.background fill
fi
