#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

BLUE="\[\e[34m\]"
GRAY="\[\e[90m\]"
RESET="\[\e[0m\]"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="[${BLUE}\u${RESET}@\h] ${GRAY}\w${RESET} $ "
