#################################### Dock  ####################################

# Sets Dock to show opened items only.
defaults write com.apple.dock static-only -bool true; killall Dock

#################################### Bash  ####################################

# Changes from zsh to bash.
sudo chsh -s /bin/bash

# Downloads custom bash_profile.
wget https://gist.githubusercontent.com/synchronizing/c473be05309b2371345733be632b0a3e/raw/ed52ffd6bfbbc732a79a71eee68a75742290d81c/.bash_profile

# Silences "bash is old" msg.
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

# Hushes bash log-in message.
touch ~/.hushlogin

##################################### Brew #####################################

# Downloads and installs brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Day-to-Day
brew cask install google-chrome whatsapp spotify fantastical

# Security & Privacy
brew cask install 1password nordvpn tor-browser

# Office Suite
brew cask install microsoft-office microsoft-excel microsoft-powerpoint

# Utilities
brew cask install dozer rectangle handbrake appcleaner deluge

# Development
brew cask install atom iterm2 docker wget virtualbox

# Version Control
brew install pyenv nodenv rbenv

################################# Virtual Envs #################################

# Setups PATH for pyenv, rbenv, and nodenv.
echo 'eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
' >> ~/.bash_profile
rbenv init

# Installs Ruby.
rbenv install 2.6.5
rbenv global 2.6.5

# Installs Node.
nodenv install 13.2.0
nodenv global 13.2.0

# Installs Python.
pyenv install 3.8.0
pyenv global 3.8.0

# Install useful Python packages.
##################################### Python ###################################

# Data Science
pip install jupyter pandas numpy matplotlib scikit-learn tensorflow

# Networking
pip install requests aiohttp

# IDE Related
pip install python-language-server[all] black

##################################### Atom #####################################

# Installs Atom's theme.

# Install Atom packages.
apm install ide-python python-black file-icons terminal-tab-plus atom-material-ui dracula-syntax

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
    showOnStartup: false' >> ~/.atom/config.cson

################################## Downloads ##################################


# Cloning iTerm color scheme.
git clone https://github.com/dracula/iterm.git ~/Desktop/
