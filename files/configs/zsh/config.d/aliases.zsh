# ring bell
alias bell="printf '\a'"

# i'm used to type vim
alias vim='nvim'
# Prompt before overwrite/removal
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'

# colorize outputs
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ccat="highlight --out-format=ansi"

# ls alias
alias lh='ls -lh'

# quick jump to often used folders
alias dc='cd "${XDG_DOCUMENTS_DIR:-$HOME/Documents}"'
alias dk='cd "${XDG_DESKTOP_DIR:-$HOME/Desktop}"'
alias dw='cd "${XDG_DOWNLOAD_DIR:-$HOME/Downloads}"'
alias nt='cd "${XDG_NOTES_DIR:-$HOME/Notes}"'

# bluetooth connections
alias btc='bluetoothctl connect'
alias btd='bluetoothctl disconnect'

# source directory aliases
alias .a='cat .aliases 2> /dev/null && . ./.aliases'

alias todo='${EDITOR} "${XDG_NOTES_DIR:-$HOME/Notes}/todo.md"'

alias pj='goto-project repo'
alias PJ='goto-project main'

alias max='calculate maximum'
alias min='calculate minimum'
alias mean='calculate mean'
alias sum='calculate sum'



# smart cut on spaces
alias scut="tr -s ' ' '\t' | cut"

# DOS to Unix newlines
alias dos2unix="tr -d '\r'"

# Remove accents
alias unaccent="iconv -f UTF-8 -t ASCII//TRANSLIT"

# trim spaces
alias trim="sed -e 's/^ *//' -e 's/ *$//'"

# clean the tmux pane before running a command
alias clean='clear && tmux clear-history &&'

# display calendar for full year with week number and Monday as week start
alias calendar='cal --monday --week --year'

# download video/audio from yt
alias yt="youtube-dl --add-metadata -i"
alias yta="yt -x -f bestaudio/best"

# disable status output on completion of some commands
alias mpc='mpc -q'

# most remote hosts don't have the tmux terminfo we use within tmux
alias ssh='TERM=xterm-256color ssh'

# switch to root
alias root='sudo -sE'

# reload shell
alias reload='source "${HOME}/.zshrc"'

# generate a password (mainly used to encrypt files to share)
alias passwdgen='echo $( < /dev/urandom tr -d -C "[:graph:]" | dd bs=1 count=30 2> /dev/null )'

# search repos
alias pacfind="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | sudo pacman -S -"
alias pacremove="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | sudo pacman -Rns -"
alias parufind="paru -Slq | fzf --multi --preview 'paru -Si {1}' | paru -S -"

# retrieve my public IP

# simple linters
alias json-lint='jq'
alias xml-lint='xmllint --format -'

# allow usage of * in queries without need for escaping
alias qalc='noglob qalc'

# flush all .log files recursively in the current dir
alias flush-logs="find . -type f -name '*.log' -exec /bin/sh -c \"printf '' > '{}'\" \;"

# tests
alias test-micro='arecord -f cd -d 3 /tmp/test-micro.wav && aplay /tmp/test-micro.wav && rm -f /tmp/test-micro.wav'
alias test-webcam='mpv av://v4l2:/dev/video0'
