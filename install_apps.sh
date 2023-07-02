#!/bin/bash

set -e

sudo pacman -S hyprland sddm swaybg swayidle swaylock wlroots wl-clipboard waybar wofi foot mako grim slurp wf-recorder light yad thunar geany mpv mpd mpc viewnior imagemagick xorg-xwayland xdg-desktop-portal-wlr playerctl

systemctl enable sddm.service

mkdir -p ~/.config/hypr

cp -r ./dotfiles/catppuccin/* ~/.config/hypr/

sudo cp -r ./fonts/* /usr/share/fonts/

sudo cp -r ./gtk/cursor/* /usr/share/icons/

sudo cp -r ./gtk/icons/* /usr/share/icons/

sudo cp -r ./gtk/theme/* /usr/share/themes/