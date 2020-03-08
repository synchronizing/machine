CUSTOM=$HOME/.custom

source $CUSTOM/env_setup.sh
source $CUSTOM/commands/docker.sh
source $CUSTOM/commands/internet.sh
source $CUSTOM/commands/osx.sh
source $CUSTOM/commands/personal.sh
source $CUSTOM/commands/utils.sh

alias h="h_personal && h_utils && h_docker && h_internet && h_osx"
