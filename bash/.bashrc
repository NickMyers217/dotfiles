# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="vim"

# Old double line ps1
#PS1="\n\\[\e[01;34m\]┌────(\[\e[01;36m\] \u@\h \[\e[01;34m\])──────────(\[\e[01;33m \t \e[01;34m\])─────────|\[\e[01;34m\]\n\[\e[01;34m\]└────(\[\e[01;32m \w \e[01;34m\])────\[\e[01;32m\]> \[\e[01;37m\]"

PS1="\[\e[1;34m\]\u\[\e[31m\] » \[\e[1;32m\]\w\[\e[1;37m\]\[\e[31m\] »\[\e[0m\] "

alias ls='ls --color=auto'
alias mu=ncmpcpp
alias viz='mpdviz -f /home/ogremagi/.mpd.fifo --icolor=true --scale=2 --step=1 -v spectrum -d true'
alias bg='feh --bg-scale ~/Wallpaper/background.jpg'
alias bg2='feh --bg-center ~/Wallpaper/background2.jpg'
alias bg3='feh --bg-center ~/Wallpaper/background3.png'
alias bga='feh --bg-center ~/Wallpaper/anime1.jpg'
alias bgarch='feh --bg-center ~/Wallpaper/arch.png'
alias bgspace='feh --bg-center ~/Wallpaper/space.jpg'

complete -cf sudo
complete -cf man
archey3
