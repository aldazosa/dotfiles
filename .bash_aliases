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
alias sagup="sudo apt-get upgrade"
alias acs="apt-cache search"
alias acsh="apt-cache show"
alias dpkgrep='dpkg -l | grep -i'

# git
alias gst="git status"
alias gb="git branch"
alias gco="git checkout"
alias gd="git diff"

# ls
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lr='ls -lrt'
alias lsd='ls -d */'

alias ack='ACK_PAGER_COLOR="less -x4SRFX" /usr/bin/ack-grep -a'

alias learn=
"java -jar ~/.m2/repository/org/clojure/clojure/1.6.0/clojure-1.6.0.jar -e '(->> clojure.core quote the-ns ns-publics seq rand-nth val meta ((juxt :name :doc)) (map println) dorun)'"

# Use pandoc to translate a markdown file into a man file and then
# display it
md() {
    pandoc -s -f markdown -t man $1 | man -l -
}
