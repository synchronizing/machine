#!/bin/bash

function logo () {
  echo "███╗   ███╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗███████╗"
  echo "████╗ ████║██╔══██╗██╔════╝██║  ██║██║████╗  ██║██╔════╝"
  echo "██╔████╔██║███████║██║     ███████║██║██╔██╗ ██║█████╗  "
  echo "██║╚██╔╝██║██╔══██║██║     ██╔══██║██║██║╚██╗██║██╔══╝  "
  echo "██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║██║██║ ╚████║███████╗"
  echo -e "╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝\n"
}

function installed () {
  cat ~/.machine/install/$1
}

# Clones Repo
git clone https://github.com/synchronizing/machine ~/.machine

# Clears Screen + Print Logo
clear
logo

# Begins Installatin
echo -e "Please select your system:\n"
echo -e " 1. Mac OSX"
echo -e " 2. Ubuntu\n"

read -p "Which installation to use? " -n 1 -r
echo -e "\n"

sh ~/.machine/scripts/general.sh

if [[ $REPLY =~ ^[1]$ ]]
then
  echo -e "Installing for MacOSX."
  sh ~/.machine/scripts/osx.sh
elif [[ $REPLY =~ ^[2]$ ]]
then
  echo -e "Installing for Ubuntu."
  sh ~/.machine/scripts/linux.sh
else
  echo -e "Nothing was selected."
  echo -e "Exiting with error 1.\n"
  exit 1
fi

# Resets Layout
clear
logo


# Prints Installed

echo -e "The following were installed:\n"
echo -e "###### Packages ######\n"
installed "packages.txt"
echo -e "\n###### PIP ######\n"
installed "pip.txt"
echo -e "\n###### Atom ######\n"
installed "atom.txt"
echo ""
