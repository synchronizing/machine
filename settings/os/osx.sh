#!/bin/bash

FOLDER=$INSTALL/osx
DOTFILES=$FOLDER/dotfiles
PACKAGES=$FOLDER/packages

function run() {
  misc_install_general
  
  brew_install
  package_txt_install package_brew_install $PACKAGES/brew.txt
  package_txt_install package_brew_cask_install $PACKAGES/brew-cask.txt
  dotfile_install $DOTFILES
}
