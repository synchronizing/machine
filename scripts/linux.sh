#!/bin/bash

# Figures out what package manager is installed.
if [[ ! -z $(which yum) ]]; then
    package_manager=$(which yum)
 elif [[ ! -z $(which apt-get) ]]; then
    package_manager=$(which apt-get)
 else
    echo "Package manager not found. Cannot install."
    exit 1;
 fi

# Install Packages
 for i in $(cat ~/.machine/install/packages.txt);
 do
   $package_manager install "$i";
 done
