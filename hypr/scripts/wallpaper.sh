#!/bin/zsh
while [[ true ]]; do
  echo "Try"
  fn=$(find /home/rafael/Pictures/wallpapers | shuf -n 1)
  echo $fn
  swww img ${fn}
  echo ":D"
  sleep 120
done

