#! /bin/bash

set -e


echo "###############################################"
echo "PACMAN BASIC RECIPE"
echo "###############################################"

yay -S --noconfirm \
    nodenv \
    nodenv-node-build
