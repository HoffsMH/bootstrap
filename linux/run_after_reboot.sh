#!/usr/bin/bash

set -e

source "$HOME/code/util/bootstrap/config.sh"

#./setup_networking.sh

./pacman_basics.sh

./create_dirs.sh

./install_yay.sh

./yay_basics.sh

./get_util.sh

./misc_admin.sh


# link common
../common/link_recipe.sh

# link linux
./link_recipe.sh

../common/gen_ssh_keys.sh

