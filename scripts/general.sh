#!/bin/bash

# Change Default Shell
chsh -s $(which zsh)

# Installs Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install VimPlug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Updates PIP
pip install --upgrade pip

# Installs all PIP Packages
pip install -r ~/.machine/install/pip.txt

# Installs Ruby.
rbenv install 2.6.5
rbenv global 2.6.5
eval "$(rbenv init -)"

# Installs Node.
nodenv install 13.2.0
nodenv global 13.2.0
eval "$(nodenv init -)"

# Installs Python.
pyenv install 3.8.0
pyenv global 3.8.0
eval "$(pyenv init -)"

# Installs Dotfiles
