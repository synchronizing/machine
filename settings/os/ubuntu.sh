#!/bin/bash

FOLDER=$INSTALL/ubuntu
PACKAGES=$FOLDER/packages

function run() {
  misc_install_general
  
  package_txt_install package_apt_get_install $PACKAGES/apt-get.txt
}
