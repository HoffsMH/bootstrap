#!/usr/bin/bash

set -e

source "$HOME/code/util/bootstrap/config.sh"

./setup_networking.sh

./pacman_basics.sh

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
