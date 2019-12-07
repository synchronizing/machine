# ☕️ Fresh OSX Setup

### Installing

Run the following on your Terminal application. 

```
curl -o ~/Desktop/start_up.sh "https://raw.githubusercontent.com/synchronizing/osx-start-package/master/start_up.sh" && chmod +x ~/Desktop/start_up.sh && ~/Desktop/start_up.sh
```

### `start_up.sh`

Utility for when I re-install OSX fresh. Does the following:

* Dock
  * Sets dock to only show active applications.
* Bash
  * Sets `/bin/bash` as default prompt (as oppose to zsh).
  * Installs `.bash_profile` settings in this repo.
  * Silences OSX Mojave bash deprecation warning.
  * Silences bash's log-in message.
* Installs
  * Day-to-Day Applications
    * Google Chrome
    * WhatsApp
    * Spotify
    * [Fantastical 2](https://flexibits.com/fantastical)
  * Security & Privacy
    * 1Password
    * NordVPN
    * Tor-Browser
  * Utilities
    * [Dozer](https://dozermac.com/)
    * [Rectangle](https://rectangleapp.com/)
    * [Handbrake](https://handbrake.fr/)
    * [AppCleaner](https://freemacsoft.net/appcleaner/)
    * [Deluge](https://deluge-torrent.org/)
  * Microsoft Office Suite
    * Office
    * Excel
    * PowerPoint
  * Development
    * [Atom](https://atom.io/)
    * [iTerm 2](https://iterm2.com/)
    * [Docker](https://www.docker.com/)
    * [VirtualBox](https://www.virtualbox.org/)
    * [httpie](https://httpie.org/)
    * [wget](https://www.gnu.org/software/wget/)
  * Version Control (dev)
    * [pyenv](https://github.com/pyenv/pyenv)
    * [nodenv](https://github.com/nodenv/nodenv)
    * [rbenv](https://github.com/rbenv/rbenv)
* Virtual Envs
  * Sets up correct PATHs.
  * Installs and sets to global:
    * `Python 3.8.0`
    * `Ruby 2.6.5`
    * `Nodejs 13.2.0`
* Python
  * Data Science
    * [`jupyter`](https://jupyter.org/)
    * [`pandas`](https://pandas.pydata.org/)
    * [`numpy`](https://numpy.org/)
    * [`matplotlib`](https://matplotlib.org/)
    * [`scikit-learn`](https://scikit-learn.org/stable/)
    * [`tensorflow`](https://www.tensorflow.org/)
  * Networking
    * [`requests`](https://requests.readthedocs.io/en/master/)
    * [`aiohttp`](https://aiohttp.readthedocs.io/en/stable/)
  * IDE Related
    * [`python-language-server[all]`](https://github.com/palantir/python-language-server)
    * [`black`](https://github.com/psf/black)
* Atom
  * Installs the following
    * [`ide-python`](https://atom.io/packages/ide-python)
    * [`python-black`](https://atom.io/packages/python-black)
    * [`file-icon`](https://atom.io/packages/file-icons)
    * [`terminal-tab-plus`](https://atom.io/packages/terminal-tab-plus)
    * [`atom-material-ui`](https://atom.io/themes/atom-material-ui)
    * [`dracula-syntax`](https://atom.io/themes/dracula-syntax)
  * Automatically sets theme settings.
* iTerm
  * Clones [`dracula`](https://draculatheme.com/iterm/) to the desktop for easy theme installation.

Atom and iTerm will look like so:

![image](https://github.com/synchronizing/osx-start-package/blob/master/images/atom.png)

![image](https://github.com/synchronizing/osx-start-package/blob/master/images/bash_profile.png)

A custom `.bash_profile` is also installed and the following commands are added:

```
@Personal
    h               Opens this help dialogue.
    drive           cd into Google drive folder.
    prog            cd into development folder.
    desk            cd into desktop folder.

@Utils
    cheat <str>     Returns a simple cheat-sheet for anything.
    weather <loc>   Returns the local, or inputted locations weather.
    short <url>     Returns a shorter link that redirects to the given url.

@Docker
    dstop           Stops all running Docker containers.
    drm             Removes all Docker containers.
    drmi            Removes all Docker images

@Internet
    ports           Displays all the currently open ports on this machine.
    myip            Prints your local and external IP.

@System
    finder          Opens the Finder on the current directory.
    show            Shows hidden files on Finder.
    hide            Hides hidden files on Finder.
    showdesk        Shows all the icons on the desktop.
    hidedesk        Hides all the icons on the desktop.
    sleepoff        Prevents computer for ever going to sleep; including closing lid.
    sleepon         Resets computer sleep settings to 10 minutes for sleep.
    trashDS         Perm deletes all .DS_Store files with nested dirs support.
```
