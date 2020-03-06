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

echo "This package has not yet been updated to support Linux distros."
