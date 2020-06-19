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

function misc_syslink_all() {
  SOURCE=$1
  DESTINATION=$2
  for source_file in $SOURCE/*; do
      ln -s $source_file "$DESTINATION"
  done
}
