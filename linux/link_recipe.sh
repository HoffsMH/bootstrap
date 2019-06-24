#! /bin/bash

set -e

echo "###############################################"
echo "LINUX LINKS"
echo "###############################################"

mkdir -p ~/.config/i3/
mkdir -p ~/.config/kitty

ln -sf ~/personal/dotfiles/linux/i3_config ~/.config/i3/config
ln -sf ~/personal/dotfiles/linux/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/personal/dotfiles/linux/.xinitrc ~/.xinitrc
ln -sf ~/personal/dotfiles/linux/.Xmodmap ~/.Xmodmap
ln -sf ~/personal/dotfiles/linux/.profile ~/.profile
ln -sf ~/personal/dotfiles/linux/.zshrc ~/.zshrc
