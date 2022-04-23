#!/usr/bin/env bash

OPTIONS=(
	lock
	suspend
	logout
	reboot
	shutdown
)

choice=$(printf "%s\n" "${OPTIONS[@]}" | dmenu -i -p "shutdown menu")

if [ "$choice" == ${OPTIONS[0]} ]; then
	betterlockscreen -l
elif [ "$choice" == ${OPTIONS[1]} ]; then
	systemctl suspend
elif [ "$choice" == ${OPTIONS[2]} ]; then
	awesome-client 'awesome.quit()'
elif [ "$choice" == ${OPTIONS[3]} ]; then
	systemctl reboot
elif [ "$choice" == ${OPTIONS[4]} ]; then
	systemctl poweroff
else
	echo "Exiting.."
fi
