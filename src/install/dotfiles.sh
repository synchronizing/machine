#!/bin/bash

function dotfile_install () {
  DOTFILE_DIR=$1
  cp -rfv $DOTFILE_DIR/. $HOME/
}
