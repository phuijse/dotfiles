#!/bin/sh
pacman -Syy
# System and drivers
pacman -S base base-devel libva-intel-driver vulkan-intel man-db
# Window manager
pacman -S sway swaylock swayidle waybar wofi mako brightnessctl wl-clipboard gammastep
# Filesystem
pacman -S udiskie usbutils exfat-utils ntfs-3g thunar thunar-volman gvfs
# Wayland compatibility
pacman -S xdg-desktop-portal-wlr xdg-desktop-portal-gtk qt5-wayland xorg-xwayland xorg-xlsclients 
# CLI
pacman -S kitty fish starship bat btop lsd duf procs fzf fd zoxide grim neovim git github-cli wget rsync pass
# Graphical
pacman -S firefox flameshot vlc discord
# Fonts
pacman -S ttf-fira-sans ttf-fira-mono ttf-fira-code
# pikaur
pacman -S pyalpm
# Omf
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
