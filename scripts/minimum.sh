#!/bin/bash

# Change Default Shell
chsh -s $(which zsh)

# Installs Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Installs Dotfiles
cp -rfs ~/.machine/dotfiles/.* ~/

# Install Plugins
vim +PluginInstall +qall
