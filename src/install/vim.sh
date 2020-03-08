#!/bin/bash

VIM_PM_REPO="https://github.com/VundleVim/Vundle.vim.git"
VIM_PM_DIR="$HOME/.vim/bundle/Vundle.vim"

function vim_install_plugin_manager() {
  git clone $VIM_PM_REPO $VIM_PM_DIR
}

function vim_install_plugins() {
  vim +PluginInstall +qall
}
