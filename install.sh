#!/bin/bash

function logo () {
  echo "███╗   ███╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗███████╗"
  echo "████╗ ████║██╔══██╗██╔════╝██║  ██║██║████╗  ██║██╔════╝"
  echo "██╔████╔██║███████║██║     ███████║██║██╔██╗ ██║█████╗  "
  echo "██║╚██╔╝██║██╔══██║██║     ██╔══██║██║██║╚██╗██║██╔══╝  "
  echo "██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║██║██║ ╚████║███████╗"
  echo -e "╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝\n"
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
if [[ $REPLY =~ ^[1]$ ]]
then
  echo -e "Installing for MacOSX."
elif [[ $REPLY =~ ^[2]$ ]]
then
  echo -e "Installing for Ubuntu."
else
  echo -e "Nothing was selected."
  echo -e "Exiting with error 1.\n"
  exit 1
fi
