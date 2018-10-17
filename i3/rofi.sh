#!/bin/bash
if [ "$1" == "1" ]; then
rofi -show run -font "Hack 11" -color-window "#455a64, #cfd8dc, #455a64" -color-normal "#455a64, #eceff1, #455a64, #00bcd4, #455a64" -color-active "#455a64, #268bd2, #455a64, #268bd2, #455a64" -color-urgent "#fdf6e3, #dc322f, #eee8d5, #dc322f, #fdf6e3" -opacity 20
fi
if [ "$1" == "2" ]; then
rofi -show window -font "Hack 11" -color-window "#455a64, #cfd8dc, #455a64" -color-normal "#455a64, #eceff1, #455a64, #00bcd4, #455a64" -color-active "#455a64, #268bd2, #455a64, #268bd2, #455a64" -color-urgent "#fdf6e3, #dc322f, #eee8d5, #dc322f, #fdf6e3" -opacity 20
fi



