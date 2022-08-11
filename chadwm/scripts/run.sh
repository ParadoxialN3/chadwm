#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
nitrogen --restore
xset r rate 200 50 &
picom &
pipewire &

~/.config/chadwm/scripts/bar.sh &
while type dwm >/dev/null; do dwm && continue || break; done
