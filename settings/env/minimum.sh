#!/bin/bash

FOLDER=$INSTALL/universal

DOTFILES=$FOLDER/dotfiles
PACKAGES=$FOLDER/packages
THEMES=$FOLDER/themes

function run() {
  vim_install_plugin_manager
  tmux_install_plugin_manager
  zsh_install_plugin_manager

  dotfile_install $DOTFILES

  vim_install_plugins
  tmux_install_plugins
  zsh_install_themes $THEMES
}
