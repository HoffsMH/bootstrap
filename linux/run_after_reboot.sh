#!/usr/bin/bash

set -e

source "./config.sh"

echo "###############################################"
echo "setting up networking"
echo "###############################################"

nmcli device wifi connect $WIFI_SSID password $WIFI_PASSWORD
systemctl enable NetworkManager

Xorg :0 -configure
cp -r /root/xorg.conf.new /etc/X11/xorg.conf



su $USERNAME

./create_dirs.sh

./install_yay.sh

yay -S --noconfirm \
    nerd-fonts-complete \
    nodenv \
    nodenv-node-build

cd ~/code/util

git clone https://github.com/robby-russell/oh-my-zsh.git
git clone https://github.com/denysdovhan/spaceship-prompt.git
git clone https://github.com/mururu/exenv.git
git clone https://github.com/hlissner/zsh-autopair.git
git clone https://github.com/syl20bnr/spacemacs.git

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/surf

cd ~

# arch linux dotfile link recipe
# link all the things
ln -sf ~/personal/dotfiles/.spacemacs ~/.
ln -sf ~/personal/dotfiles/.gitignore_global ~/.
ln -sf ~/personal/dotfiles/.gitconfig ~/.
ln -sf ~/personal/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/personal/dotfiles/.xinitrc ~/.

ln -sf ~/code/util/oh-my-zsh ~/.oh-my-zsh
ln -sf ~/code/util/spacemacs ~/.emacs.d
