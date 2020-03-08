#!/bin/bash

ZSH_PM_DIR="$HOME/.oh-my-zsh"

function zsh_install_plugin_manager() {
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function zsh_install_themes() {
  THEME_DIR=$1
  cp -rf $THEME_DIR/. $ZSH_PM_DIR/themes/
}
