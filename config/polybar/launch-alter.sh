#!/usr/bin/env sh
## Add this to wm startup file

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

## Launch

polybar primary -c ~/.config/polybar/config-alter.ini &
sleep 1 &&
polybar music -c ~/.config/polybar/config-alter.ini &
polybar center -c ~/.config/polybar/config-alter.ini &
polybar secondary -c ~/.config/polybar/config-alter.ini &

# external_monitor=$(xrandr --query | grep 'HDMI-1-1')
# if [[ $external_monitor = HDMI-1-1\ connected* ]]; then
#     polybar primary -c ~/.config/polybar/config-alter.ini &
#     sleep 1 &&
#     polybar music -c ~/.config/polybar/config-alter.ini &
#     polybar center -c ~/.config/polybar/config-alter.ini &
# 	polybar secondary-hdmi -c ~/.config/polybar/config-alter.ini &
# else
#     polybar primary -c ~/.config/polybar/config-alter.ini &
#     sleep 1 &&
#     polybar music -c ~/.config/polybar/config-alter.ini &
#     polybar center -c ~/.config/polybar/config-alter.ini &
#     polybar secondary -c ~/.config/polybar/config-alter.ini &
# fi


