#!/bin/bash



if pgrep "Music" > /dev/null; then
  STATE="$(osascript -e 'tell application "Music" to get player state')"

  if [ "$STATE" = "playing" ]; then
    ARTIST="$(osascript -e 'tell application "Music" to get artist of current track')"
    TITLE="$(osascript -e 'tell application "Music" to get name of current track')"
  sketchybar --set $NAME label="$TITLE - $ARTIST" drawing=on
  else
    sketchybar --set $NAME drawing=on label="No Music Playing"
  fi
else 
  sketchybar --set $NAME drawing=on label="Music Closed" 
fi