#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
sxhkd &
exec bspwm
