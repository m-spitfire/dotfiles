documentation-all(1perso)

# NAME

documentation-all - Interactive selection of documentation page to display

# SYNOPSIS

documentation-all

# DESCRIPTION

Open interface to select topic to display documentation of.

# OPTIONS

*-c*
	only build the cache for the list of topics

# OPERANDS

None

# ENVIRONMENT VARIABLES

_MAN_PATH_
If unset, defaults to /usr/share/man

_XDG_CACHE_HOME_
If unset, defaults to $HOME/.cache

# FILES

_$MAN_PATH_
	Man pages directory

_/usr/share/zsh/{ version }/help_
	Directory containing zsh utilities help files

_$XDG_CACHE_HOME/documentation_topics_
	File used as cache for the list of topics

# DEPENDENCIES

- fzf
- documentation
- zsh
