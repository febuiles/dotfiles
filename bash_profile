source ~/.alias
source ~/.git-prompt.sh

export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=20000
export PS1='\n\[\e[33m\]\w\033[36m\]$(__git_ps1 " (%s)")\[\033[00m\]\nλ '
export EDITOR="emacsclient"
export PATH=$PATH:/usr/local/bin:/usr/bin:/usr/local/sbin:/Applications/Emacs.app/Contents/MacOS/bin
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000
export NODE_PATH=/usr/local/lib/node
export LANG="en_US.UTF-8"
export PATH=$PATH:$HOME/.rvm/bin

shopt -s histappend

function sgm {
    rails g migration $@ | grep create  | awk '{print $3}' | xargs $EDITOR
}

# <3 RVM
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
