alias h_utils='echo "
@Utils
    cheat <str>         Returns a simple cheat-sheet for anything.
    weather <loc>       Returns the local, or inputted locations weather.
    short <url>         Returns a shorter link that redirects to the given url.
    gen <name>.<ext>    Generates filename.extension and opens it on Atom."'


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
alias gen='generate_file'
generate_file () {
    if [ -z "$1" ]; then
      echo "Please write a <filename>.<extension> to generate file."
    else
      file="~/Desktop/$1"
      atom $file
    fi
}
