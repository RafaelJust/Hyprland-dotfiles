#!/bin/sh
current_state=$(hyprctl getoption animations:enabled | grep 'int:' | awk '{print $2}')

fancy_disabled=$(hyprctl getoption decoration:blur:new_optimizations | grep 'int:' | awk '{print $2}')
# Disable fancy mode, if it is on
if [ "$fancy_disabled" = "1" ]; then
  killall cava
  hyprctl reload
fi

if [ "$current_state" = "1" ]; then
  # Enable gamemode
  hyprctl keyword animations:enabled false
  hyprctl keyword general:gaps_in 0
  hyprctl keyword general:gaps_out 0
  hyprctl keyword decoration:rounding 0
  hyprctl keyword decoration:blur:enabled 0
  killall wallpaper.sh
  hyprctl notify 5 2000 0 "Gamemode Enabled!"
else
  #recover from gamemode
  hyprctl notify 3 2000 0 "Gamemode disabled!"
  hyprctl reload
  /home/rafael/.config/hypr/scripts/wallpaper.sh
fi
