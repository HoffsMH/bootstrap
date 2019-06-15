#! /bin/bash

set -e


echo "###############################################"
echo "PACMAN BASIC RECIPE"
echo "###############################################"

pacman -S --noconfirm \
       fzf \
       fasd \
       jq \
       firefox \
       neofetch \
       openssh \
       sudo \
       networkmanager \
       grub \
       figlet \
       zsh \
       the_silver_searcher \
       ttf-linux-libertine \
       ttf-inconsolata \
       noto-fonts
