# History settings

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000

#Extended glibbing and nomatch settings
setopt extendedglob nomatch

# Disable autocd, beep, and notify
unsetopt autocd beep notify

# Use vi mode for command-line editing
bindkey -v

# End of lines added by compinstall

BLUE="%F{blue}"
GRAY="%F{#808080}"
RESET="%f"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="[${BLUE}%n${RESET}@%m] ${GRAY}%~${RESET} $ "

source /opt/toolchains/dc/kos/environ.sh

