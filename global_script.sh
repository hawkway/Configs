#!/bin/bash
# autostart
# author pdq  11-27-2012
# THEMEDIR=$HOME"/.config/awesome/themes/dunzor"

## SEE $XDG_CONFIG_HOME/awesome/custom/
## If wanting to regenerate every themes script.sh from the default_script.

## Run from terminal:

## sh $XDG_CONFIG_HOME/awesome/custom/script_regeneration.sh

###tc1="/media/truecrypt1/test"
###tc2="/media/truecrypt2/test"

###if [ -f "$tc1" ] && [ -f "$tc2" ] || [ "$USER" != "pdq" ] ; then

#nitrogen --restore &
	###[ -z "$(pidof compton)" ] && compton -cF &
	###sleep 2s
	###feh --bg-scale $HOME/Pictures/wallpaper/1088253-bludragon.jpg &
	#sh ~/bin/rotate_wallpaper &
	#[ -z "$(pidof bitlbee)" ] && sudo bitlbee -D
	###[ -z "$(pidof weechat-curses)" ] && urxvtc -name "IRC1" -e weechat-curses && urxvtc -name "IRC2" -e weechat-curses -d ~/.weechat-priv
	###[ -z "$(pidof xbindkeys)" ] && xbindkeys &
	#[ -z "$(pidof htop)" ] && urxvtc -name "Htop" -e htop
	#[ -z "$(pidof saidar)" ] && urxvtc -name "Saidar" -e saidar -c
	###[ -z "$(pidof tail)" ] && urxvtc -name "STDerr" -e tail -f "$HOME/.cache/awesome/stderr"
	#[ -z "$(pidof ttyload)" ] && urxvtc -name "TTYload" -e ttyload
	#if [ -d "$HOME/Videos/playlist" ] ; then
#		[ -z "$(pidof vlc)" ] && vlc "$HOME/Videos/playlist" &
#	fi
	###[ -z "$(pidof sublime_text)" ] && subl
	#[ -z "$(pidof spacefm)" ] && spacefm &
	#[ -z "$(pidof firefox)" ] && firefox &
	#[ -z "$(pidof dropbox)" ] && dropboxd &
	#[ -z "$(pidof transmission-daemon)" ] && sudo systemctl start transmission.service
	#[ -z "$(pidof mocp)" ] && urxvtc -name "MOCP" -e mocp &
	killall conky
	sleep 2s
	[ -z "$(pidof conky)" ] && conky -d -c "$HOME"/.config/conky/.conkyrc &
	#sleep 5s
	#[ -z "$(pidof pidgin)" ] && pidgin &
	sleep 10s
	[ -z "$(pidof truecrypt)" ] && truecrypt &
	sleep 60s
	[ -z "$(pidof keepassx)" ] && keepassx &
	sleep 30s
	[ -z "$(pidof parcellite)" ] && parcellite &
	#sleep 1800s
	#[ -z "$(pidof teamviewer)" ] && teamviewer &
	#[ -z "$(pidof httpd)" ] && sudo lamp.sh start
	###[ -z "$(pidof aarchup)" ] && /usr/bin/aarchup --loop-time 30 --aur --icon "$HOME/.config/awesome/icons/pacman_icon_48x48.png" &
	###sudo killall journalctl && urxvtc -name "Logs" -e sudo journalctl -f
###fi

# focus tag 1
#wmctrl -s 0

# exit cleanly
exit $?