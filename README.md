# Personal OSX Setup

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
    * Fantastical 2
  * Security & Privacy
    * 1Password
    * NordVPN
    * Tor-Browser
  * Utilities
    * Dozer
    * Rectangle
    * Handbrake
    * AppCleaner
    * Deluge
  * Microsoft Office Suite
    * Office
    * Excel
    * PowerPoint
  * Development
    * Atom
    * iTerm 2
    * Docker
    * VirtualBox
    * wget
  * Version Control (dev)
    * Pyenv
    * Nodenv
    * Rbenv
* Virtual Envs
  * Sets up correct PATHs.
  * Installs and sets to global:
    * `Python 3.8.0`
    * `Ruby 2.6.5`
    * `Nodejs 13.2.0`
* Python
  * Data Science
    * `jupyter`
    * `pandas`
    * `numpy`
    * `matplotlib`
    * `scikit-learn`
    * `tensorflow`
  * Networking
    * `requests`
    * `aiohttp`
  * IDE Related
    * `python-language-server[all]`
    * `black`
* Atom
  * Installs the following
    * `ide-python`
    * `python-black`
    * `file-icon`
    * `terminal-tab-plus`
    * `atom-material-ui`
    * `dracula-syntax`
  * Automatically sets theme settings.
* iTerm
  * Clones `dracula` to the desktop for easy theme installation.

---

### `.bash_profile`

This is the helping prompt for the `.bash_profile` above:

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

and it looks like so:

![image](https://github.com/synchronizing/osx-start-package/blob/master/images/bash_profile.png)
