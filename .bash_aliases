# -*- mode: sh -*-

alias se="sudo emacs -nw -Q"
alias e="emacs -nw -Q"
alias grep="grep --color=always"
alias ls='ls --color=auto'

alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias f="find"
alias g="git"
alias s="ssh"

# package management
alias sagi="sudo apt-get install"
alias sagr="sudo apt-get remove"
alias sagu="sudo apt-get update"
alias acs="apt-cache search"
alias acsh="apt-cache show"
alias dpkgrep='dpkg -l | grep -i'

# git
alias gst="git status"
alias gb="git branch"
alias gco="git checkout"

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lr='ls -lrt'
alias lsd='ls -d */'

alias ack='ACK_PAGER_COLOR="less -x4SRFX" /usr/bin/ack-grep -a'
