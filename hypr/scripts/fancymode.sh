!#/bin/sh
current_state=$(hyprctl getoption decoration:drop_shadow | grep 'int:' | awk '{print $2}')

if [ "$current_state" = "0" ]; then
  # Enable fancy mode
  hyprctl keyword decoration:blur:enabled true
  hyprctl keyword decoration:inactive_opacity 0.8
  hyprctl keyword decoration:blur:new_optimizations false
  hyprctl keyword decoration:drop_shadow true
  hyprctl dispatch exec /home/rafael/.config/hypr/scripts/cava-bg-kitty.sh
  hyprctl notify 5 2000 0 "Fancy mode Enabled!"
else
  #recover from fancy mode
  hyprctl notify 3 2000 0 "Fancy mode disabled!"
  killall cava
  hyprctl reload
fi
