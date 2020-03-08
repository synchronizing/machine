#!/bin/bash

# Settings Github repo.
GITHUB="https://github.com/synchronizing/machine"

# Setting folder variables.
MACHINE=$HOME/.machine

# Subfolders
INSTALL=$MACHINE/install
SETTINGS=$MACHINE/settings
SRC=$MACHINE/src

# Prints the logo.
function logo() {
  echo ""
  echo -e "\t███╗   ███╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗███████╗"
  echo -e "\t████╗ ████║██╔══██╗██╔════╝██║  ██║██║████╗  ██║██╔════╝"
  echo -e "\t██╔████╔██║███████║██║     ███████║██║██╔██╗ ██║█████╗  "
  echo -e "\t██║╚██╔╝██║██╔══██║██║     ██╔══██║██║██║╚██╗██║██╔══╝  "
  echo -e "\t██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║██║██║ ╚████║███████╗"
  echo -e "\t╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝\n"
}

# Clear screens, prints logo + info.
function start() {
  clear
  logo
  echo -e "\tPlease refer to documentation for more information."
  echo -e "\t$GITHUB"
  echo -e "\n-----------------------------------------------------------------------\n"
}

# Checks if repo has been changed.
# Returns 1 if yes, 0 if no.
function repository_not_updated() {
  if [[ 'git status --porcelain' ]]; then
    return 1
  else
    return 0
  fi
}

# Deletes the repository if no changes found.
function repository_clean() {
  cd $MACHINE
  if repository_not_updated; then
    echo "No changes found... cleaning up."
    rm -rf $MACHINE
  else
    echo "Changes have been made to $HOME/.machine, and therefore cleaning is not available."
    echo "Please ensure the repository is saved before cleaning."
  fi
}

# If repo does not exist, downloads it.
# If repo does exist, check if needs update.
function repository_update() {
  if [ ! -d "$HOME/.machine" ]; then
    git clone $GITHUB $MACHINE
  elif [[ $# -eq 0 ]];
  then
    cd $MACHINE
    git fetch
    if repository_not_updated; then
      git pull
    else
      echo "Repo has changed. Please utilize git to perform updates."
    fi
  fi
}

# ---------------------------------------------------------------------------- #

# Downloads repository.
repository_update 0

# Sources main menu.
source $SRC/menus.sh

# Sources installation packages.
source $SRC/install/dotfiles.sh
source $SRC/install/misc.sh
source $SRC/install/packages.sh
source $SRC/install/tmux.sh
source $SRC/install/vim.sh
source $SRC/install/zsh.sh

# Begins main menu setup.
menu $SETTINGS true
