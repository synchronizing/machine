# Path Setup
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Setting up rbenv path.
export PATH="$HOME/.rbenv/bin:$PATH"
