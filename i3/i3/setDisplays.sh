#!/bin/bash


isHome=$(xrandr | grep -c "DP-1-1-1 connected")
isWork=$(xrandr | grep -c "HDMI-1-2 connected")
didUpdate=0;
if [[ $isWork -eq 1 && $SCREEN_STATE != "WORK" ]]; then

	xrandr --auto && xrandr --output eDP-1-1 --off
        xrandr --output DP-1-1 --primary
	xrandr --output HDMI-1-2 --auto --right-of DP-1-1 --rotate left
	export SCREEN_STATE="WORK"
	didUpdate=1

elif [[ $isHome -eq 1 && $SCREEN_STATE != "HOME" ]]; then

	xrandr --auto && xrandr --output eDP-1-1 --off
	xrandr --output DP-1-1-3 --auto --right-of DP-1-1-1 --rotate normal

	export SCREEN_STATE="HOME"
	didUpdate=1

elif [[ $isHome -eq 0 && $isWork -eq 0 && $SCREEN_STATE != "LAPTOP" ]]; then
	xrandr --auto
	export SCREEN_STATE="LAPTOP"
	didUpdate=1
fi

if [[ $didUpdate -eq 1 ]]; then
	feh --bg-scale ~/Pictures/Wallpapers/wallpaper.png
fi
