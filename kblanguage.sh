#!/bin/sh
KBLAYOUT=$(cat "$HOME/.kblayout")



if [[ "$KBLAYOUT" == "qwerty" ]]; then
    setxkbmap -layout us
    source $HOME/.config/autostart/remapkeys.sh
    echo "canary" > $HOME/.kblayout
    notify-send "switched to qwerty"
elif [[ "$KBLAYOUT" == "canary" ]]; then
    setxkbmap canary
    source $HOME/.config/autostart/remapkeys.sh
    echo "qwerty" > $HOME/.kblayout
    notify-send "switched to canary"
else
    notify-send "Invalid Layout"
fi
