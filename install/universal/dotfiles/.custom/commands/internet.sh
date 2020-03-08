alias h_internet='echo "
@Internet
    ports               Displays all the currently open ports on this machine.
    myip                Prints local and external IP."'

# @Internet
alias ports="sudo lsof -iTCP -sTCP:LISTEN -n -P"
myip () { echo "Local: $(ipconfig getifaddr en0)" && echo "External: $(curl -s 'https://api.ipify.org?format=text')"; }
