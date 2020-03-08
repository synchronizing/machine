# ☕️ Machine

<p align="center">
  <img height="280" src="./.github/images/machine.png">
  <br>
</p>

This is a machine management tool (as oppose to package management tool) that allows the installation and creation of a custom machine setups, including:

* Installing packages with the OS's package manager (`brew`, `apt-get`, `yum`, etc.)
* Install and/or configure:
  * `tmux`
  * `vim`
  * `zsh` or `bash`
* Store and configure dotfiles (the `.*` files that live in your `~` directory.)

---

## Installing

Run the following to begin the installation (`bash` used for cosmetic reasons; `sh` will also work.):

```
bash -c "$(curl -fsSL https://raw.github.com/synchronizing/machine/master/install.sh)"
```

Shorter link:

```
bash -c "$(curl -fsSL self.st/install.sh)"
```

---

## Understanding Project Structure

To understand how to create your own configuration you need to first understand how the project is structured. The following are the root files (top two) and folders (bottom three):

```tree
├── README.md
├── install.sh
│
├── install
├── settings
└── src
```

In simple terms, `install.sh` gives a simple UI to allow running the install files (`.sh` files) inside the `settings` folder. The files inside `settings` will install the content inside the `install` folder.

### `machine/install/`

```tree
install
├── osx
│   ├── dotfiles
│   └── packages
│       ├── brew-cask.txt
│       └── brew.txt
├── ubuntu
│   └── packages
│       └── apt-get.txt
└── universal
    ├── dotfiles
    ├── packages
    │   ├── atom.txt
    │   ├── package-manager.txt
    │   └── pip.txt
    ├── themes
    │   └── machine.zsh-theme
    └── versions
        └── versions.sh
```

The install folder holds the files and configurations to install. The "universal" folder is _always_ installed.

### `machine/src/`

```tree
src
├── install
│   ├── dotfiles.sh
│   ├── misc.sh
│   ├── packages.sh
│   ├── tmux.sh
│   ├── vim.sh
│   └── zsh.sh
└── menus.sh
```

This folder holds files that contain functionalities that can be used to install different configurations.

### `machine/settings/`

```tree
settings
├── env
│   ├── general.sh
│   ├── manual.sh
│   └── minimum.sh
├── os
│   ├── osx.sh
│   └── ubuntu.sh
└── tools
    └── clean.sh
```

These are the current installations and tools available to the end-user. `install.sh` automatically generates the menu to allow the running of these files.

## Creating Own Configuration

If you want to create your own configuration it is as simple as calling a few functions in a `.sh` file. Let's do it by example- let us assume you want to create a configuration for a `fedora` system. You have done a fork and `git pull` of the project to your desktop, and you add the following:

### First

Create the `fedora` folder inside `machine/install/` with the relevant installation files:

```tree
install
├── fedora
│   ├── dotfiles
│   ├── packages
│   └── themes
├── osx
├── ubuntu
└── universal
```

Inside each folder, place the relevant file. Notice:

* `dotfiles`: Place any file you want to be moved to your home (`~`) folder.
* `packages`: Place a `.txt` file with the packages you would like to install.
* `themes`: Place any theme file you would like to install.

### Second

Create a file `machine/settings/os/fedora.sh`, which will contain a `run` function. So take the `osx` installation as an example:

```bash
#!/bin/bash

FOLDER=$INSTALL/osx
DOTFILES=$FOLDER/dotfiles
PACKAGES=$FOLDER/packages

function run() {
  misc_install_general

  brew_install
  package_txt_install package_brew_install $PACKAGES/brew.txt
  package_txt_install package_brew_cask_install $PACKAGES/brew-cask.txt
  dotfile_install $DOTFILES
}
```

All the functions you see being called are described in the [wiki](https://raw.github.com/synchronizing/machine). For the case of our `fedora` system we might do something like so:

```bash
#!/bin/bash

FOLDER=$INSTALL/fedora
DOTFILES=$FOLDER/dotfiles
PACKAGES=$FOLDER/packages
THEMES=$FOLDER/theme

function run() {
  package_txt_install package_yum_install $PACKAGES/yum.txt
  dotfile_install $DOTFILES
}
```

### Third

Push the changes up to your `git` repository via `git add . && git push`, and then run the installation on your `fedora` machine:

```bash
GITHUB_USERNAME="synchronizing"
sh -c "$(curl -fsSL https://raw.github.com/$GITHUB_USERNAME/machine/master/install.sh)"
```

---

## Includes

This repo contains multiple installations out of the box. The order is as follow:

### Minimum

* [zsh](https://www.zsh.org/)
  * [Oh-My-Zsh](https://ohmyz.sh/)
* [vim](https://www.vim.org/)
  * Plugin Manager
    * [Vundle](https://github.com/VundleVim/Vundle.vim)
  * NerdTree
    * [NerdTree](https://github.com/preservim/nerdtree)
    * [NerdTree-Git-Plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
    * [Vim-NerdTree-Tabs](https://github.com/jistr/vim-nerdtree-tabs)
    * [NerdCommenter](https://github.com/preservim/nerdcommenter)
  * Extensions
    * [Vim-Airline](https://github.com/vim-airline/vim-airline)
    * [TagBar](https://github.com/majutsushi/tagbar)
    * [Goyo](https://github.com/junegunn/goyo.vim)
    * [Vimify](https://github.com/HendrikPetertje/vimify)
  * Tmux
    * [Vim-Tmux-Navigator](https://github.com/christoomey/vim-tmux-navigator)
    * [Tmuxline](https://github.com/edkolev/tmuxline.vim)
  * Syntax
    * [Python-Syntax](https://github.com/vim-python/python-syntax)
  * Theme
    * [OneHalf](https://github.com/sonph/onehalf/tree/master/vim)
* [tmux](https://github.com/tmux/tmux/wiki)
  * [tpm](https://github.com/tmux-plugins/tpm)
  * [tmux-better-mouse-movement](https://github.com/NHDaly/tmux-better-mouse-mode)
  * [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)

### General

Installs minimum and the following.

* **Virtual Envs**
  * Sets up correct PATHs.
  * Installs and sets to global:
    * `Python 3.8.0`
    * `Ruby 2.6.5`
    * `Nodejs 13.2.0`  
* **Python**
  * Data Science
    * [`jupyter`](https://jupyter.org/)
    * [`pandas`](https://pandas.pydata.org/)
    * [`numpy`](https://numpy.org/)
    * [`matplotlib`](https://matplotlib.org/)
    * [`scikit-learn`](https://scikit-learn.org/stable/)
  * Networking
    * [`requests`](https://requests.readthedocs.io/en/master/)
    * [`aiohttp`](https://aiohttp.readthedocs.io/en/stable/)
  * IDE Related
    * [`python-language-server[all]`](https://github.com/palantir/python-language-server)
    * [`black`](https://github.com/psf/black)

### Platform

Installs the following:

* [wget](https://www.gnu.org/software/wget/)
* [httpie](https://httpie.org/)
* [pyenv](https://github.com/pyenv/pyenv)
  * [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
* [nodenv](https://github.com/nodenv/nodenv)
* [rbenv](https://github.com/rbenv/rbenv)

### OSX

Installs minimum, general, platform, and the following:

* **Installs** (using [`brew`](https://brew.sh/))
  * Day-to-Day Applications
    * [Google Chrome](https://www.google.com/chrome/)
    * [WhatsApp](https://www.whatsapp.com/)
    * [Spotify](https://www.spotify.com/us/)
    * [Fantastical 2](https://flexibits.com/fantastical)
  * Security & Privacy
    * [1Password](https://1password.com/)
    * [NordVPN](https://nordvpn.com/)
    * [AdGuard Mac](https://adguard.com/en/adguard-mac/overview.html)
    * [Tor-Browser](https://www.torproject.org/download/)
  * Utilities
    * [Dozer](https://dozermac.com/)
    * [Rectangle](https://rectangleapp.com/)
    * [Handbrake](https://handbrake.fr/)
    * [AppCleaner](https://freemacsoft.net/appcleaner/)
    * [Deluge](https://deluge-torrent.org/)
  * [Microsoft Office Suite](https://www.office.com/)
    * Office
    * Excel
    * PowerPoint
    * OneNote
    * Outlook
    * OneDrive
  * Development
    * [Atom](https://atom.io/)
      * Themes
        * [`atom-material-ui`](https://atom.io/themes/atom-material-ui)
        * [`dracula-syntax`](https://atom.io/themes/dracula-syntax)
      * Utilities
        * [`ide-python`](https://atom.io/packages/ide-python)
        * [`python-black`](https://atom.io/packages/python-black)
        * [`file-icon`](https://atom.io/packages/file-icons)
        * [`terminal-tab-plus`](https://atom.io/packages/terminal-tab-plus)
        * [`single-click-open`](https://atom.io/packages/single-click-open)
    * [iTerm 2](https://iterm2.com/)
    * [Docker](https://www.docker.com/)
    * [VirtualBox](https://www.virtualbox.org/)
    * [httpie](https://httpie.org/)
    * [wget](https://www.gnu.org/software/wget/)
  * Version Control (dev)
    * [pyenv](https://github.com/pyenv/pyenv)
      * [pyenv-virtualenv](https://github.com/pyenv/pyenv-virtualenv)
    * [nodenv](https://github.com/nodenv/nodenv)
    * [rbenv](https://github.com/rbenv/rbenv)
  * Design
    * [Adobe CC](https://www.adobe.com/creativecloud.html)

---

## Custom Commands

Custom commands are also installed in both `.bash_profile` and `.zshrc`. Type `h` for info.

```
@Personal
    h                   Opens this help dialogue.
    desk                Go to desktop folder.

@Utils
    cheat <str>         Returns a simple cheat-sheet for anything.
    weather <loc>       Returns the local, or inputted locations weather.
    short <url>         Returns a shorter link that redirects to the given url.
    gen <name>.<ext>    Generates filename.extension and opens it on Atom.

@Docker
    dstop               Stops all running Docker containers.
    drm                 Removes all Docker containers.
    drmi                Removes all Docker images

@Internet
    ports               Displays all the currently open ports on this machine.
    myip                Prints local and external IP.

@System (OSX)
    f                   Opens the Finder on the current directory.
    show                Shows hidden files on Finder.
    hide                Hides hidden files on Finder.
    showdesk            Shows all the icons on the desktop.
    hidedesk            Hides all the icons on the desktop.
    sleepoff            Prevents computer for ever going to sleep; including closing lid.
    sleepon             Resets computer sleep settings to 10 minutes for sleep.
    trashDS             Perm deletes all .DS_Store files with nested dirs support.
```
