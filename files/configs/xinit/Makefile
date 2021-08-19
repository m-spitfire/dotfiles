#!/bin/sh

mpd &
dunst &
transmission-daemon &
unclutter &
remaps &
dwmblocks &
fcitx -d &

while true; do
  dwm >~/.cache/dwm.log 2>&1
done
