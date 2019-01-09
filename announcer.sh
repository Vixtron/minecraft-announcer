#!/bin/bash

SCREEN="mc" # Set your screen name
ENABLE_CHAT_MESSAGES=true # If it should send messages
MESSAGES=("You can join us on Discord type /discord" "If you want to support us, you can donate /buy") # Messages to announce

if $ENABLE_CHAT_MESSAGES; then
    if [[ $MESSAGES && $SCREEN!="" ]]; then
        screen -S $SCREEN -p 0 -X stuff "tellraw @a {\"text\":\"<\u00A7bInfo\u00A7r> $(shuf -n1 -e "${MESSAGES[@]}")\"}\r"
    fi
fi