#! /bin/bash

set -e


echo "###############################################"
echo "PACMAN BASIC RECIPE"
echo "###############################################"

yay -S --noconfirm \
    nerd-fonts-complete \
    nodenv \
    nodenv-node-build
