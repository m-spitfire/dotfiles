# define common paths
export XDG_CONFIG_HOME="{dir/config}"
export XDG_DATA_HOME="{dir/data}"
export XDG_CACHE_HOME="{dir/cache}"
export XDG_BOOKS_DIR="${HOME}/Books"
export XDG_CONTACTS_DIR="${HOME}/Contacts"
export XDG_DESKTOP_DIR="${HOME}/Desktop"
export XDG_DOCUMENTS_DIR="${HOME}/Documents"
export XDG_DOWNLOAD_DIR="${HOME}/Downloads"
export XDG_NOTES_DIR="${HOME}/Notes"
export XDG_PROJECTS_DIR="${HOME}/Projects"
export XDG_VIDEOS_DIR="${HOME}/Videos"

# default programs
export EDITOR=nvim
export TERMINAL=alacritty
export BROWSER=firefox
export PAGER=less

# korean input
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

# theme qt apps
export QT_QPA_PLATFORMTHEME=qt5ct

# fix java apps in dwm
export _JAVA_AWT_WM_NONREPARENTING=1

export PASSWORD_STORE_DIR="{dir/data}/password-store"

# firefox smooth scrolling
export MOZ_USE_XINPUT2="1"

# highlight less
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"

# define replacement for redirections with no command
export NULLCMD=:
export READNULLCMD=less

# update gpg tty for pinentry use
export GPG_TTY="$(tty)"

# change grep output colors
GREP_COLORS='ms=1;{color/search_match/fg}'
GREP_COLORS="${GREP_COLORS}:mc=1;{color/search_match/fg}"
GREP_COLORS="${GREP_COLORS}:sl="
GREP_COLORS="${GREP_COLORS}:cx="
GREP_COLORS="${GREP_COLORS}:fn={color/base09/fg}"
GREP_COLORS="${GREP_COLORS}:ln={color/base0A/fg}"
GREP_COLORS="${GREP_COLORS}:bn={color/base0A/fg}"
GREP_COLORS="${GREP_COLORS}:se={color/base08/fg}"
export GREP_COLORS

# change jq output colors
JQ_COLORS='0;{color/base0C/fg}'
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0B/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0C/fg}"
JQ_COLORS="${JQ_COLORS}:0;{color/base0C/fg}"
export JQ_COLORS

# define ripgrep config path
export RIPGREP_CONFIG_PATH='{dir/config}/ripgrep/config'

# decrease key timeout to 100ms
export KEYTIMEOUT=10

# only alphanumeric characters and _ are considered part of a word
# no other character is added
# (not used by vi-style movement bindings but define it just in case anyway)
export WORDCHARS='_'

# fzf default options
FZF_DEFAULT_OPTS='--reverse --height=20 --no-bold --marker="*"'
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS} --color="
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}bg:{color/background/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},fg:{color/foreground/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},hl:{color/base0A/number}:bold"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},fg+:{color/base00/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},bg+:{color/current_item/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},hl+:{color/base00/number}:bold"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},info:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},prompt:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},pointer:{color/base00/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},marker:{color/selected_item/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},spinner:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},border:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},header:{color/base0A/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},gutter:{color/background/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},query:{color/foreground/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},disabled:{color/base02/number}"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS} --bind="
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS}right-click:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},double-click:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},shift-down:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},shift-up:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},shift-left:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},shift-right:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},home:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},end:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},pgdn:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},pgup:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},alt-bs:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},alt-b:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},alt-d:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},alt-f:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-a:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-f:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-g:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-j:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-k:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-y:ignore"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/interrupt/low}:abort,ctrl-{key/quit/low}:abort,{key/escape/esc}:abort"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},{key/return/return}:accept"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/command_start/low}:beginning-of-line"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},{key/left/left}:backward-char"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},{key/right/right}:forward-char"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/backspace/low}:backward-delete-char,{key/backspace/bspace}:backward-delete-char"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/command_delete_backward_word/low}:backward-kill-word"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/command_delete_start/low}:unix-line-discard"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/command_delete_all/low}:beginning-of-line+kill-line"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/command_end/low}:end-of-line"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/clear/low}:clear-screen"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/next/low}:next-history"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/previous/low}:previous-history"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-{key/t}:toggle"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},ctrl-alt-{key/t}:toggle-all"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},shift-{key/tabulation/tab}:up,{key/up/up}:up"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},{key/tabulation/tab}:down,{key/down/down}:down"
FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS},change:first"
export FZF_DEFAULT_OPTS

# fzf default find command
export FZF_DEFAULT_COMMAND='rg --files'

# tell ssh to use gpg agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

