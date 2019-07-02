#! /bin/bash

set -e


echo "###############################################"
echo "YAY BASIC RECIPE"
echo "###############################################"

yay -S --noconfirm \
    direnv \
    rbenv \
    nodenv \
    nodenv-node-build \
    slack-desktop-dark \
    taskell \
    lf-bin 
