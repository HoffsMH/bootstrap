#!/usr/bin/bash

set -e

source "./config.sh"

echo "###############################################"
echo "CREATE DIRS"
echo "###############################################"

mkdir -p "$USER_HOME/code/util/aur" \
      "$USER_HOME/code/util/" \
      "$USER_HOME/code/paid/" \
      "$USER_HOME/code/fun/" \
      "$PERSONAL_DIR/00-capture" \
      "$PERSONAL_DIR/01-schedule"

# install and aurutils for later scripts
git clone $DOTFILES_REPO "$PERSONAL_DIR/dotfiles"
