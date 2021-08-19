.POSIX:
.DEFAULT: all

THEME = dark

BIN_DIR    = $(HOME)/.local/bin
CACHE_DIR  = $(HOME)/.cache
CONFIG_DIR = $(HOME)/.config
DATA_DIR   = $(HOME)/.local/share
SRC_DIR    = $(HOME)/.local/src

-include .env

setup_file = { setup/substitute-apps | setup/substitute-colors $(THEME) | setup/substitute-dirs | setup/substitute-keys; } < files

#include files/configs/aerc/Makefile
include files/configs/alacritty/Makefile
include files/configs/amfora/Makefile
include files/configs/coreutils/Makefile
include files/configs/dwm/Makefile
include files/configs/dwmblocks/Makefile
include files/configs/fontconfig/Makefile
include files/configs/git/Makefile
include files/configs/gnupg/Makefile
include files/configs/htop/Makefile
include files/configs/httpie/Makefile
include files/configs/less/Makefile
include files/configs/dunst/Makefile
include files/configs/mpd/Makefile
include files/configs/openssh/Makefile
include files/configs/qutebrowser/Makefile
include files/configs/ripgrep/Makefile
include files/configs/newsboat/Makefile
include files/configs/slock/Makefile
include files/configs/tmux/Makefile
include files/configs/translate-shell/Makefile
include files/configs/nvim/Makefile
#include files/configs/weechat/Makefile
include files/configs/zathura/Makefile
include files/configs/zsh/Makefile

include files/docs/git/Makefile
include files/docs/shell/Makefile

include files/scripts/dwmblocks/Makefile
include files/scripts/git/Makefile
include files/scripts/shell/Makefile

include files/Makefile

check:
	find files/scripts -type f ! -name Makefile -exec shellcheck {} \;

clean:
	rm -rf build
