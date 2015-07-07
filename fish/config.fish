# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme chronno

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# alias se "sudo emacs -nw -Q"
# alias e "emacs -nw -Q"
# alias grep "grep --color always"
alias ls 'ls --color=auto'

# alias fgrep 'fgrep --color auto'
# alias egrep 'egrep --color auto'

alias f "find"
alias g "git"

complete --command g --wraps "git"

alias s "ssh"

# package management
alias sagi "sudo apt-get install"
alias sagr "sudo apt-get remove"
alias sagu "sudo apt-get update"
alias acs "apt-cache search"
alias acsh "apt-cache show"
alias dpkgrep 'dpkg -l | grep -i'

# git
alias gst "git status"
alias gb "git branch"
alias gco "git checkout"
alias gd="git diff"

# ls
alias ll 'ls -alF'
alias la 'ls -A'
alias l 'ls -CF'
alias lr 'ls -lrt'
alias lsd 'ls -d */'

# emacs stuff
set -x EDITOR emacsclient
set -x ALTERNATE_EDITOR ""

alias et "emacsclient -t"
alias e "emacsclient -c -a emacs"

alias E "sudo -e"

function __fish_git_branches
  command git branch --no-color -a ^/dev/null | sgrep -v ' -> ' | sed -e 's/^..//' -e 's/^remotes\/origin\///'
end
