#!/usr/bin/bash

set -e

source "./config.sh"

./setup_networking.sh

Xorg :0 -configure
cp -r /root/xorg.conf.new /etc/X11/xorg.conf

su $USERNAME

./create_dirs.sh

./install_yay.sh

./yay_basics.sh


./get_util.sh

# link common
../common/link_recipe.sh

# link linux

# arch linux dotfile link recipe
# link all the things
ln -sf ~/personal/dotfiles/.xinitrc ~/.
