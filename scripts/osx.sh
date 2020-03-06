#!/bin/bash

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installs Brew Packages
xargs brew install < ~/.machine/install/packages.txt
xargs brew cask install < ~/.machine/install/osx/cask.txt
