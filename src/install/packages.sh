#!/bin/bash

# ########## SYSTEM PACKAGE MANAGERS ##########

# ---- BREW ----
function brew_install() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function package_brew_install() {
  PACKAGE=$1
  brew install $PACKAGE
}

function package_brew_cask_install() {
  PACKAGE=$1
  brew cask install $PACKAGE
}

# ---- APT-GET ----
function package_apt_get_install() {
  PACKAGE=$1
  sudo apt-get install $PACKAGE
}

# ---- YUM ----
function package_yum_install() {
  PACKAGE=$1
  sudo yum install $PACKAGE
}

# ---- GUESS ----
function package_system_installed() {
  TEST_BREW=$(which brew)
  TEST_APT_GET=$(which apt-get)
  TEST_YUM=$(which yum)

  if [[ ! -z $TEST_BREW ]]; then
    return package_brew_install
  elif [[ ! -z $TEST_APT_GET ]]; then
    return package_apt_get_install
  elif [[ ! -z $TEST_YUM ]]; then
    return package_yum_install
  else
    echo "Error. Could not find the machines package manager."
    exit 1;
  fi
}

# ########## APP SPECIFIC PACKAGE MANAGERS ##########

# ---- RBENV ----
function package_rbenv_install() {
  VERSION=$1
  rbenv install $VERSION
  rbenv global $VERSION
  eval "$(rbenv init -)"
}

# ---- NODENV ----
function package_nodenv_install() {
  VERSION=$1
  nodenv install $VERSION
  nodenv global $VERSION
  eval "$(nodenv init -)"
}

# ---- PYENV ----
function package_pyenv_install() {
  VERSION=$1
  pyenv install $VERSION
  pyenv global $VERSION
  eval "$(nodenv init -)"
}

# ---- PIP ----
function package_pip_install() {
  PACKAGE=$1
  pip install $PACKAGE
}

function package_pip_upgrade() {
  pip install --upgrade pip
}

# ---- ATOM ----
function package_atom_install() {
  PACKAGE=$1
  apm install $PACKAGE
}

# ########## MISC ##########

# ---- INSTALL TXT FILE ----
function package_txt_install() {
  PACKAGE_MANAGER=$1
  TXT_FILE=$2

  for i in $(cat $TXT_FILE);
  do
    $PACKAGE_MANAGER "$i";
  done
}
