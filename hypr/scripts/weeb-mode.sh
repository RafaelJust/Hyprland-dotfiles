#!/bin/sh
FILE=/tmp/weeb-mode
if [ -f $FILE ]; then
  waypaper --folder /home/rafael/Pictures/wallpapers/non-weeb --random
  rm /tmp/weeb-mode
  hyprctl notify 3 2000 0 "Weeb mode disabled!"
else
  waypaper --folder /home/rafael/Pictures/wallpapers/weeb --random
  touch /tmp/weeb-mode
  hyprctl notify 5 2000 0 "Weeb mode enabled!"
fi
