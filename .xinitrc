#!/bin/bash

# rm -rf ~/.local/share/fonts/tamzen-font
# cd ~/.local/share/fonts && git clone https://github.com/sunaku/tamzen-font.git
# xset +fp ~/.local/share/fonts/tamzen-font/bdf
# xset fp rehash

echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode
xrandr --output DP-1-1 --primary
xmodmap ~/.xmodmap
xset m 18/15 0
xset r rate 300 100
xset s off
xbindkeys -p
parcellite &
nm-applet &
flameshot &
unclutter -idle 5 &
# pulseaudio -D &

./.xinitrc.local &

# xinput --set-prop 11 "Device Accel Constant Deceleration" 1.5
# xinput --set-prop 11 "Coordinate Transformation Matrix" 4 0 0 0 4 0 0 0 2 &

# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')/ cursor-blink-mode off
