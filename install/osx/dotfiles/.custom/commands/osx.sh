alias h_osx='echo "
@System
    f                   Opens the Finder on the current directory.
    show                Shows hidden files on Finder.
    hide                Hides hidden files on Finder.
    showdesk            Shows all the icons on the desktop.
    hidedesk            Hides all the icons on the desktop.
    sleepoff            Prevents computer for ever going to sleep; including closing lid.
    sleepon             Resets computer sleep settings to 10 minutes for sleep.
    trashDS             Perm deletes all .DS_Store files with nested dirs support."'

# @System
alias f='open -a Finder ./'
alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app | echo "Showing hidden files."'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app | echo "Hidding hidden files."'
alias showdesk='defaults write com.apple.finder CreateDesktop true; killall Finder | echo "Showing desktop icons."'
alias hidedesk='defaults write com.apple.finder CreateDesktop false; killall Finder | echo "Hiding desktop icons."'
alias sleepoff='sudo pmset -b sleep 0; sudo pmset -b disablesleep 1; echo "Computer will not sleep."'
alias sleepon='sudo pmset -b sleep 10; sudo pmset -b disablesleep 0; echo "Computer will sleep if inactive for 10 minutes."'
alias trashDS="find . -type f -name '*.DS_Store' -ls -delete"
