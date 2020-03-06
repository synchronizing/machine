#!/bin/bash

# Install Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installs Brew Packages
for i in $(cat ~/.machine/install/packages.txt);
do
  brew install "$i";
done

# Install Brew Cask Packages
for i in $(cat ~/.machine/install/osx/cask.txt);
do
  brew cask install "$i";
done
