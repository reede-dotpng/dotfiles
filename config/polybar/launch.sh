#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

external_monitor=$(xrandr --query | grep HDMI-1-0)

if [[ $external_monitor = HDMI-1-0\ connected* ]];then
    echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
    echo "external_monitor connected" | tee -a /tmp/polybar1.log /tmp/polybar2.log
    polybar example -c ~/.config/polybar/config-external.ini -r >>/tmp/polybar1.log 2>&1 & disown
    echo "bar for eDP-1" | tee -a /tmp/polybar1.log /tmp/polybar2.log
    polybar example -c ~/.config/polybar/config.ini -r >>/tmp/polybar1.log 2>&1 & disown
else
    # Launch bar1 and bar2
    echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
    polybar example -c ~/.config/polybar/config.ini -r >>/tmp/polybar1.log 2>&1 & disown
fi

echo "Bars launched..."
