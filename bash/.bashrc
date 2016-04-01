# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"


PS1="\[\e[1;34m\]\u\[\e[31m\] » \[\e[1;32m\]\w\[\e[1;37m\]\[\e[31m\] »\[\e[0m\] "

eval $(dircolors ~/.dircolors)

alias ls='ls --color=auto'

complete -cf sudo
complete -cf man

archey3
