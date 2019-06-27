#!/usr/bin/bash

set -e

source "$HOME/code/util/bootstrap/config.sh"

echo "###############################################"
echo "CREATE DIRS"
echo "###############################################"

mkdir -p "$USER_HOME/code/util" \
      "$USER_HOME/code/paid/" \
      "$USER_HOME/code/fun/" \
      "$PERSONAL_DIR/00-capture" \
      "$PERSONAL_DIR/01-schedule" \
      "$PERSONAL_DIR/media/audio/capture" \
      "$PERSONAL_DIR/media/video/capture" \
      "$PERSONAL_DIR/media/image/wall" \
      "$PERSONAL_DIR/media/image/ss"

touch "$PERSONAL_DIR/media/dlscript.sh"
chmod +x "$PERSONAL_DIR/media/dlscript.sh"


# install and aurutils for later scripts
git clone $DOTFILES_REPO "$PERSONAL_DIR/dotfiles"
