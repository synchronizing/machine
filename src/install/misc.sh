#!/bin/bash

function misc_change_shell() {
  SHELL=$1
  chsh -s $(which $SHELL)
}

function misc_install_minimum() {
  source $SETTINGS/env/minimum.sh
  run
}

function misc_install_general() {
  source $SETTINGS/env/general.sh
  run
}
