#!/bin/bash

SPACE_SIDS=(1 2 3 4)

space=(
    icon.font="sketchybar-app-font:Regular:16.0"
    label.padding_right=20
    label.y_offset=-1
    update_freq=3
    script="$PLUGIN_DIR/space.sh"
)

for sid in "${SPACE_SIDS[@]}"
do
  sketchybar --add space space.$sid left  \
             --set space.$sid "${space[@]}"                         
done