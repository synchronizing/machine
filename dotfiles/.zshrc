# Path to Home
export HOME="$(echo ~/)"

# Path to your oh-my-zsh installation.
export ZSH="$(echo $HOME)/.oh-my-zsh"

# Default Folder
cd ~/Desktop

# Path Setup
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Theme
ZSH_THEME="prose"

# Plugins
plugins=(git pyenv)

# Path to coreutils.
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Sourcing oh-my-zsh.
source $ZSH/oh-my-zsh.sh
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
