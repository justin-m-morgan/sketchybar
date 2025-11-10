sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
   
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        padding_left=5 \
        background.color=$ACCENT_COLOR \
        background.corner_radius=5 \
        background.drawing=on \
        label.font="sketchybar-app-font:Regular:16.0" \
        label.padding_left=10 \
        label.padding_right=10 \
        icon.drawing=on \
        icon="$sid" \
        icon.font="$FONT:Black:22.0" \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid" \
        # update_freq=3
done

