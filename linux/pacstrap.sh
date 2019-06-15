#!/usr/bin/env bash

source "./config.sh"

pacstrap /mnt \
         base \
         base-devel \
         $GRAPHICS_DRIVER \
         vim \
         emacs \
         git \
         xorg-server \
         xorg-xinit \
         xorg-server-utils \
         zsh \
         the_silver_searcher
