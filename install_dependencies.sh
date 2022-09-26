#!/bin/sh
# System and drivers
pacman -S base base-devel libva-intel-driver vulkan-intel man-db
# Window manager
pacman -S sway swaylock swayidle waybar wofi mako brightnessctl wl-clipboard gammastep
# Filesystem
pacman -S udiskie usbutils exfat-utils ntfs-3g thunar thunar-volman gvfs
# Wayland compatibility
pacman -S xdg-desktop-portal-wlr xdg-desktop-portal-gtk qt5-wayland xorg-xwayland xorg-xlsclients 
# Core tools
pacman -S kitty fish starship bat btop lsd duf procs fzf fd zoxide grim wget rsync pass imv
# Developer tools
pacman -S neovim pyright git github-cli diff-so-fancy
# Graphical
pacman -S firefox flameshot vlc discord
# Fonts
pacman -S otf-font-awesome ttf-fira-sans ttf-fira-mono ttf-fira-code noto-fonts-emoji ttf-nerd-fonts-symbols
# pikaur
pacman -S pyalpm python-black flake8
# Omf
# curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
