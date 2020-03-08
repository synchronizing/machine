#!/bin/bash

# Main Menu
function menu () {
  start

  # Grabs the variables.
  DIRECTORY=$1
  MAIN=$2
  INSTALLED=$3

  # Settings config.
  PS3="#? "

  # CD's into directory passed.
  cd $DIRECTORY

  # If INSTALLED is passed, give feedback.
  if [ ! -z "$INSTALLED" ]
  then
    echo -e "$INSTALLED has been ran.\n"
  fi

  # If a TYPE is passed, then we are going into the main directory.
  if [ -z "$MAIN" ]
  then
    echo "Type 'exit' to go back."
  else
    echo "Type 'exit' to quit."
  fi

  # Creates a select menu.
  select filename in $(find * -maxdepth 0 | sed 's/^\.\///g' | sort);
  do
      # Exit attempt.
      if [[ "$REPLY" == exit ]];
      then

        # Checks if inside main menu, or submenu.
        if [ ! -z "$MAIN" ]
        then
          exit 0
        else
          menu $(dirname $1) true
        fi

      # Invalid selection.
      elif [[ "$filename" == "" ]]
      then
          echo ">> '$REPLY' is not a valid selection."
          continue

      # Valid selection.
      else

        # Check if inside main menu.
        if [ ! -z "$MAIN" ]
        then
          menu $1/$filename
        else
          source $filename
          run
          menu $(dirname $1) true $filename
        fi
      fi
  done
}

# Install Dotfile
function menu_dotfile () {
  start

  # Grabs the variables.
  DIRECTORY=$1
  MAIN=$2

  # Settings config.
  PS3="#? "

  # CD's into directory passed.
  cd $DIRECTORY

  # If a TYPE is passed, then we are going into the main directory.
  if [ -z "$MAIN" ]
  then
    echo "Type 'exit' to go back."
  else
    echo "Type 'exit' to quit."
  fi

  select filename in $(find . -type f | sed 's/^\.\///g' | sort);
  do
      if [[ "$REPLY" == exit ]]; then break; fi

      if [[ "$filename" == "" ]]
      then
          echo "'$REPLY' is not a valid number"
          continue
      fi

      cp -rf $filename $HOME/
      echo "$filename installed."
  done
}
