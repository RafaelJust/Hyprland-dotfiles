#!/bin/zsh
while [[ true ]]; do
  fn=$(find /home/rafael/Pictures/wallpapers | shuf -n 1)
  echo $fn
  swww img --transition-fps 60 --transition-type random $fn
  sleep 120
done

