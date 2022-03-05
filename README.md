Packages

    pacman -S sway swaylock swayidle xdg-desktop-portal-wlr xdg-desktop-portal-gtk brightnessctl waybar wofi mako otf-font-awesome kitty neovim grim flameshot btop fish lsd 

Then from this repo

    ./install

To create this repo:

1. git init
1. git submodule add https://github.com/anishathalye/dotbot
1. git config -f .gitmodules submodule.dotbot.ignore dirty
1. cp dotbot/tools/git-submodule/install .
1. touch install.conf.yaml  
