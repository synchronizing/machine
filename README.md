# ☕️ Fresh OSX Setup

#### While you can simply run this script, I instead recommend branching this repo and editing the `start_up.sh` file to your personal liking. Everything in there is commented and should be obvious!

---

### Installing

Run the following in your Terminal application.

```
curl -o ~/Desktop/start_up.sh "https://raw.githubusercontent.com/synchronizing/osx-start-package/master/start_up.sh" && chmod +x ~/Desktop/start_up.sh && ~/Desktop/start_up.sh
```

### `start_up.sh`

Utility for when I reinstall a fresh copy of OSX. When ran, the following occurs:

* **Dock**
  * Sets dock to only show active applications.
* **Bash**
  * Sets `/bin/bash` as default prompt (as oppose to zsh).
  * Installs a custom `.bash_profile` (found in this repo).
  * Silences OSX Mojave's bash deprecation warning.
  * Silences bash's log-in message.
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
* **Atom**
  * Themes
    * [`atom-material-ui`](https://atom.io/themes/atom-material-ui)
    * [`dracula-syntax`](https://atom.io/themes/dracula-syntax)
  * Utilities
    * [`ide-python`](https://atom.io/packages/ide-python)
    * [`python-black`](https://atom.io/packages/python-black)
    * [`file-icon`](https://atom.io/packages/file-icons)
    * [`terminal-tab-plus`](https://atom.io/packages/terminal-tab-plus)
    * [`single-click-open`](https://atom.io/packages/single-click-open)
  * Automatically sets theme settings.
  * Disables "Allow Pending Pane Items" settings. ([ref](https://github.com/atom/atom/issues/11243))
  * Sets `/bin/bash` as default shell for `terminal-tab-plus`.
* **iTerm**
  * Clones [`dracula`](https://draculatheme.com/iterm/) to the desktop for easy theme installation.

Atom and iTerm will look like so:

![image](https://github.com/synchronizing/osx-start-package/blob/master/images/atom.png)

![image](https://github.com/synchronizing/osx-start-package/blob/master/images/bash_profile.png)

A custom `.bash_profile` is also installed and the following commands are added:

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

@System
    finder              Opens the Finder on the current directory.
    show                Shows hidden files on Finder.
    hide                Hides hidden files on Finder.
    showdesk            Shows all the icons on the desktop.
    hidedesk            Hides all the icons on the desktop.
    sleepoff            Prevents computer for ever going to sleep; including closing lid.
    sleepon             Resets computer sleep settings to 10 minutes for sleep.
    trashDS             Perm deletes all .DS_Store files with nested dirs support.
```
