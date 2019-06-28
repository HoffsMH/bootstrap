#! /bin/bash

set -e


echo "###############################################"
echo "PACMAN BASIC RECIPE"
echo "###############################################"

yay -S --noconfirm \
    direnv \
    rbenv \
    nodenv \
    nodenv-node-build \
    slack-desktop-dark \
    taskell \
    lf-bin \
    google-chat-linux
