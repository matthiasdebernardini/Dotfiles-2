set fish_greeting ""

function inst
    sudo apt update
    sudo apt install $argv
end

function update
    sudo apt update
end

function upgrade
    sudo apt update
    sudo apt upgrade
end

function dlaudio
    youtube-dl -f bestaudio --extract-audio --audio-format mp3 $argv
end

function pyserve
    python3 -m http.server $argv --bind 127.0.0.1
end

function pyserver
    python3 -m http.server 1234 --bind 127.0.0.1
end

function mdfind
    find ~/ -type f | fzf --bind "enter:execute(xdg-open {})" -q "$argv"
end

function sr
    eval $argv > /dev/null 2>&1 &
end
