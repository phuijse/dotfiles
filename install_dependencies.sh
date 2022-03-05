#!/bin/sh
pacman -Syy
# Window manager
pacman -S sway swaylock swayidle waybar wofi mako brightnessctl
# Wayland compatibility
pacman -S xdg-desktop-portal-wlr xdg-desktop-portal-gtk qt5-wayland xlsclients xorg-xwayland xorg-xlsclients
# Tools
pacman -S fish btop lsd grim flameshot neovim
# Fonts
pacman -S otf-font-awesome
