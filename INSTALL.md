
## Includes

This repo contains multiple installations. The order is as follow:

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
