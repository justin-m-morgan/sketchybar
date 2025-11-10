#!/bin/bash

sketchybar --add item media e \
           --set media label.color=$WHITE \
                       label.max_chars=20 \
                       scroll_texts=on \
                       icon=􀑪             \
                       icon.color=$WHITE   \
                       background.drawing=on \
                       script="$PLUGIN_DIR/media.sh" \
                       update_freq=5 \
           --subscribe media media_change