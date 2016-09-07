#!/bin/sh
SCREEN=$1
DISPLAYS=$(xrandr --query | grep '\bconnected\b' | awk '{print $1}')
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
#if ["$SCREEN" = "vga"]; then
    /home/joelchrist/.screenlayout/vga.sh
#fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
exec bspwm
