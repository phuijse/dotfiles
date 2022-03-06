#!/bin/sh
pacman -Syy
# System and drivers
pacman -S base base-devel libva-intel-driver vulkan-intel
# Window manager
pacman -S sway swaylock swayidle waybar wofi mako brightnessctl wl-clipboard gammastep
# Filesystem
pacman -S udiskie usbutils exfat-utils ntfs-3g thunar thunar-volman gvfs
# Wayland compatibility
pacman -S xdg-desktop-portal-wlr xdg-desktop-portal-gtk qt5-wayland xlsclients xorg-xwayland xorg-xlsclients 
# CLI
pacman -S fish bat btop lsd duf procs fzf fd zoxide grim neovim git github-cli wget rsync pass
# Graphical
pacman -S firefox flameshot vlc discord
# Fonts
pacman -S otf-font-awesome
