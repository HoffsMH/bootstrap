#! /bin/bash

set -e


echo "###############################################"
echo "PACMAN BASIC RECIPE"
echo "###############################################"

sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm \
       vim \
       fzf \
       fasd \
       exa \
       jq \
       emacs \
       xclip \
       xorg-xclipboard \
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
       noto-fonts \
       elixir \
       kitty \
       fzf \
       evtest \
       xcape \
       xorg-fonts-misc \
       xorg-font-util \
       xorg-fonts-alias \
       xorg-fonts-encodings \
       xorg-xev \
       jdk-openjdk \
       i3-gaps \
       i3status \
       ttf-fira-code \
       axel \
       syncthing \
       zathura
