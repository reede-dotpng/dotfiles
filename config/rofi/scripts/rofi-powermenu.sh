#!/bin/bash


#if [ -z "$@" ]; then
#    echo -en "Shutdown\0icon\x1f/usr/share/icons/Papirus/48x48/apps/system-shutdown.svg\n"
#    echo -en "Reboot\0icon\x1f/usr/share/icons/Papirus/48x48/apps/system-reboot.svg\n"
#    echo -en "Logout\0icon\x1f/usr/share/icons/Papirus/48x48/apps/system-log-out.svg\n"
#    echo -en "Lock\0icon\x1f/usr/share/icons/Papirus/48x48/apps/system-lock-screen.svg\n"
#    echo -en "Suspend\0icon\x1f/usr/share/icons/Papirus/48x48/apps/system-suspend.svg\n"
if [ -z "$@" ]; then
	echo -en "\n"
	echo -en "\n"
	echo -en "\n"
	echo -en "\n"
	echo -en "\n"
else
    if [ "$1" = "" ]; then
	    shutdown now
    elif [ "$1" = "" ]; then
        bspc exit
    elif [ "$1" = "" ]; then
        sudo reboot
    elif [ "$1" = "" ]; then
        systemctl suspend
    elif [ "$1" = "" ]; then
	    betterlockscreen -l blur
    fi
fi
