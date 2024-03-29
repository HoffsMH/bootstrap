#! /bin/bash

set -e

echo "###############################################"
echo "LINUX LINKS"
echo "###############################################"

mkdir -p ~/.config/i3/
mkdir -p ~/.config/kitty
mkdir -p ~/.config/conky
mkdir -p ~/.config/sxhkd
mkdir -p ~/.config/redshift

ln -sf ~/personal/dotfiles/linux/i3_config ~/.config/i3/config
ln -sf ~/personal/dotfiles/linux/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/personal/dotfiles/linux/.xinitrc ~/.xinitrc
ln -sf ~/personal/dotfiles/linux/.Xmodmap ~/.Xmodmap
ln -sf ~/personal/dotfiles/linux/.profile ~/.zprofile
ln -sf ~/personal/dotfiles/linux/.zshrc ~/.zshrc
ln -sf ~/personal/dotfiles/linux/.spacemacs ~/.spacemacs
ln -sf ~/personal/dotfiles/linux/conky.conf ~/.config/conky/conky.conf
ln -sf ~/personal/dotfiles/linux/redshift.conf ~/.config/redshift/

mkdir -p "$HOME/.config/lf"

ln -sf ~/personal/dotfiles/linux/lfrc ~/.config/lf/lfrc
ln -sf ~/personal/dotfiles/linux/sxhkdrc ~/.config/sxhkd/sxhkdrc
