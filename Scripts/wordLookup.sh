word=$(wl-paste -p)
definition=$(dict -d wn "$word" | tail -n +6)

notify-send -t 10000 "$word" "$definition"
