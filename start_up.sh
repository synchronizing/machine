#################################### Dock  ####################################

# Sets Dock to show opened items only.
defaults write com.apple.dock static-only -bool true; killall Dock

##################################### Brew #####################################

# Downloads and installs brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Day-to-Day
brew cask install google-chrome whatsapp spotify fantastical

# Security & Privacy
brew cask install 1password nordvpn tor-browser

# Office Suite
brew cask install microsoft-office

# Utilities
brew cask install dozer rectangle handbrake appcleaner deluge

# Development
brew cask install atom iterm2 docker virtualbox
brew install wget httpie pyenv nodenv rbenv

#################################### Bash  ####################################

# Changes from zsh to bash.
chsh -s /bin/bash

# Downloads custom bash_profile.
rm -rf ~/.bash_profile
wget https://gist.githubusercontent.com/synchronizing/c473be05309b2371345733be632b0a3e/raw/ed52ffd6bfbbc732a79a71eee68a75742290d81c/.bash_profile ~/.bash_profile

# Hushes bash log-in message.
touch ~/.hushlogin

################################# Virtual Envs #################################

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

##################################### Python ###################################

# Updates PIP.
pip install --upgrade pip

# Data Science
pip install jupyter pandas numpy matplotlib scikit-learn

# Networking
pip install requests aiohttp

# IDE Related
pip install python-language-server[all] black

##################################### Atom #####################################

# Installs Atom's theme.
apm install atom-material-ui dracula-syntax

# Install Atom packages.
apm install ide-python python-black file-icons

echo '"*":
  "atom-material-ui":
    colors:
      abaseColor: "#7e7e7e"
      genAccent: true
      predefinedColor: "Grey"
    tabs:
      compactTabs: true
    ui:
      useAnimations: false
  core:
    disabledPackages: [
      "about"
    ]
    telemetryConsent: "no"
    themes: [
      "atom-material-ui"
      "dracula-syntax"
    ]
    titleBar: "custom"
  "no-title-bar": {}
  welcome:
    showOnStartup: false' > ~/.atom/config.cson

################################## Downloads ##################################


# Cloning iTerm color scheme.
git clone https://github.com/dracula/iterm.git
