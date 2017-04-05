#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# General settings
export VISUAL=vim
export EDITOR=vim
set -o vi

# Autostart X-Server
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
		exec startx
fi

# Alias'
alias ls='ls --color=auto' 
alias la='ls -la'
alias grep='grep --color=auto'
alias update='/home/enrico/.scripts/update.sh'

# Design
PS1='[\u@\h \W]\$ '
