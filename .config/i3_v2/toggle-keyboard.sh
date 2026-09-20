#!/usr/bin/env bash
# ============================================================
# toggle-keyboard.sh — Toggle QWERTY (US) / AZERTY (FR)
# Write layout in ~/.config/i3/keyboard_layout
# Usage : $mod+Ctrl+l in ~/.config/i3/config
# ============================================================

LAYOUT_FILE="$HOME/.config/i3/keyboard_layout"

CURRENT=$(setxkbmap -query 2>/dev/null | awk '/^layout/{print $2}' | cut -d, -f1)

if [ "$CURRENT" = "us" ]; then
    setxkbmap fr
    echo "FR" > "$LAYOUT_FILE"
    NEXT="FR (AZERTY)"
else
    setxkbmap us
    echo "US" > "$LAYOUT_FILE"
    NEXT="US (QWERTY)"
fi

# Force to reload i3status (send SIGUSR1)
pkill -SIGUSR1 i3status 2>/dev/null

# Notification (need dunst)
notify-send \
    --urgency=low \
    --expire-time=1500 \
    "⌨" \
    "Layout : $NEXT"
