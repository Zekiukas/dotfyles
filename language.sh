#!/bin/sh
LAYOUT=$(cat "$HOME/.layout")

if [[ "$LAYOUT" == "lt" ]]; then
    setxkbmap lt
    echo "us" > $HOME/.layout
    notify-send "Switched to Lithuanian Layout"
elif [[ "$LAYOUT" == "us" ]]; then
    setxkbmap us
    echo "lt" > $HOME/.layout
    notify-send "Switched to US Layout"
else
    notify-send "Invalid Layout"
fi
