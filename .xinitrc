#!/bin/bash

## start urxvt daemon
#urxvtd -q -o -f

## start clipboard manager
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &

## export some variables
export BROWSER=firefox
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export LANG=en_US.UTF-8

## login sound
#ogg123 -q "${HOME}/.config/awesome/sounds/voice-system-activated.ogg"

## truecrypt mounted success file
#if [ -f "/media/truecrypt1/test" ] ; then
#	ogg123 -q "${HOME}/.config/awesome/sounds/desktop-login.ogg"
#fi

## start Desktop Environment/Window Manager
if [ $1 = "awesome" ]; then
	exec awesome >> "$HOME"/.cache/awesome/stdout 2>> "$HOME"/.cache/awesome/stderr
elif [ $1 = "kde" ]; then
	exec startkde
elif [ $1 = "e" ]; then
	exec enlightenment_start
elif [ $1 = "i3" ]; then
	exec i3
else
        exec sudo systemctl start sddm.service
	#exec enlightenment_start
fi
