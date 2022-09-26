# ArchLinux + Swaywm dotfiles

Clone this repo, cd to it and

    ./install_dependencies.sh
    ./install


To set nvim do :PackerInstall and :LspInstallInfo

This repo was created with

1. git init
1. git submodule add https://github.com/anishathalye/dotbot
1. git config -f .gitmodules submodule.dotbot.ignore dirty
1. cp dotbot/tools/git-submodule/install .
1. touch install.conf.yaml  
