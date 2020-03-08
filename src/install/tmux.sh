#!/bin/bash

TMUX_PM_REPO="https://github.com/tmux-plugins/tpm"
TMUX_PM_DIR="$HOME/.tmux/plugins/tpm"

function tmux_install_plugin_manager() {
  git clone $TMUX_PM_REPO $TMUX_PM_DIR
}

function tmux_install_plugins() {
  sh $TMUX_PM_DIR/scripts/install_plugins.sh
}
