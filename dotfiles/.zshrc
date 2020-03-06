# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

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
source ~/.oh-my-zsh/oh-my-zsh.sh

# Sourcing custom commands.
source ~/.commands

# Sourcing rbenv path.
export PATH="$HOME/.rbenv/bin:$PATH"
