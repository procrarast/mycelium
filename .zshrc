# libanzen PATH stuff

#PATH="$PATH:/opt/toolchains/dc-gccrs/sh-elf/bin:/opt/toolchains/dc-gccrs/arm-eabi/bin:$HOME/.cargo/bin"
#export GCCRS_INCOMPLETE_AND_EXPERIMENTAL_COMPILER_DO_NOT_USE=1 
#export GCCRS_CUSTOM_BIN="sh-elf-gccrs"
#export PATH="$PATH:/home/pc31754/.local/bin"

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

BLUE="%F{blue}"
GRAY="%F{#808080}"
WHITE="%f"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="[${BLUE}%n${WHITE}@%m] ${GRAY}%~${WHITE} $ "

