#!/bin/zsh
FILE=/tmp/master
if [ -f $FILE ]; then
  hyprctl keyword general:layout dwindle
  rm $FILE
else
  hyprctl keyword general:layout master
  touch $FILE
fi
