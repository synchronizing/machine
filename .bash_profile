# Removes Bash warning.
export BASH_SILENCE_DEPRECATION_WARNING=1

# Path setup.
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

# Open shell directly on desktop.
cd ~/Desktop

alias h='echo "
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
"'

# @Personal
alias drive='cd ~/Drive/'
alias prog='cd ~/Drive/Sandbox/Programming'
alias desk="cd ~/Desktop"

# @Utils
alias cheat='cheat_check'
cheat_check () {
    if [ -z "$1" ]; then
        echo "Input query to use cheat."
    else
        curl cheat.sh/$1
    fi
}
alias weather='weather_check'
weather_check () {
    if [ -z "$1" ]; then
        curl wttr.in
    else
        curl wttr.in/$1
    fi
}
alias short='short_check'
short_check () {
    if [ -z "$1" ]; then
        echo "Input URL to be shortned."
    else
        http -f 0x0.st shorten=$1 -b
    fi
}

# @Docker
dstop () { docker stop $(docker ps -aq); }
drm () { docker rm $(docker ps -aq); }
drmi () { docker rmi $(docker images -q); }

# @Internet
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
myip () { echo "Local: $(ipconfig getifaddr en0)" && echo "External: $(curl -s 'https://api.ipify.org?format=text')"; }

# @System
alias f='open -a Finder ./'
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app | echo "Showing hidden files."'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app | echo "Hidding hidden files."'
alias showdesk='defaults write com.apple.finder CreateDesktop true; killall Finder | echo "Showing desktop icons."'
alias hidedesk='defaults write com.apple.finder CreateDesktop false; killall Finder | echo "Hiding desktop icons."'
alias sleepoff='sudo pmset -b sleep 0; sudo pmset -b disablesleep 1; echo "Computer will not sleep."'
alias sleepon='sudo pmset -b sleep 10; sudo pmset -b disablesleep 0; echo "Computer will sleep if inactive for 10 minutes."'
alias trashDS="find . -type f -name '*.DS_Store' -ls -delete"


# @Theming

# Sets 'ls' command to automatically include color.
if ls --color > /dev/null 2>&1; then
  colorflag="--color"
else
  colorflag="-G"
fi

alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# @gf3’s Sexy Bash Prompt, inspired by “Extravagant Zsh Prompt”
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
  export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
  export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
  tput sgr0
  if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
    MAGENTA=$(tput setaf 125)
    ORANGE=$(tput setaf 166)
    GREEN=$(tput setaf 64)
    PURPLE=$(tput setaf 61)
    WHITE=$(tput setaf 244)
  else
    MAGENTA=$(tput setaf 5)
    ORANGE=$(tput setaf 4)
    GREEN=$(tput setaf 2)
    PURPLE=$(tput setaf 1)
    WHITE=$(tput setaf 7)
  fi
  BOLD=$(tput bold)
  RESET=$(tput sgr0)
else
  MAGENTA="\033[1;31m"
  ORANGE="\033[1;33m"
  GREEN="\033[1;32m"
  PURPLE="\033[1;35m"
  WHITE="\033[1;37m"
  BOLD=""
  RESET="\033[m"
fi

export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET

function parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

export PS1="\[${BOLD}${MAGENTA}\]\u \[$WHITE\]at \[$ORANGE\]\t \[$WHITE\]in \[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n ☁️   \[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"
