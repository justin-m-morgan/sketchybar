#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh

icon_strip=""
while IFS= read -r app; do
    icon_strip+=" $($HOME/.config/sketchybar/plugins/icon_map_fn.sh "$app")"
done < <(aerospace list-windows --workspace $1 --format "%{app-name}")
icon_strip="${icon_strip# }"  # Remove leading space


if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME \
        background.drawing=on \
        label="$icon_strip"
else
    sketchybar --set $NAME \
    background.drawing=off \
    label="$icon_strip"
fi

