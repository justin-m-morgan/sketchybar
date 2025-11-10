# --- Right Side Items ---

calendar=(
    icon=􀧞
    icon.drawing=off
    label="$(date +'%b %_d (%a) %_I:%M %p')"
)


sketchybar --add item calendar right \
           --set calendar "${calendar[@]}"

