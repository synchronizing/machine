#!/bin/bash

FOLDER=$INSTALL/universal
DOTFILES=$FOLDER/dotfiles
PACKAGES=$FOLDER/packages
VERSIONS=$FOLDER/versions

# Sources the version file.
source $VERSIONS/versions.sh

function run() {
  misc_install_minimum
  
  misc_change_shell zsh

  package_rbenv_install $VERSION_RUBY
  package_nodenv_install $VERSION_NODE
  package_pyenv_install $VERSION_PYTHON

  package_pip_upgrade

  package_txt_install package_pip_install $PACKAGES/pip.txt
  package_txt_install package_atom_install $PACKAGES/atom.txt
  package_txt_install package_system_installed $PACKAGES/package-manager.txt
}
