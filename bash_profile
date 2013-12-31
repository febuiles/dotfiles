export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=20000
export PS1='\n\[\e[33m\]\w\033[36m\]$(parse_git_branch)\[\033[00m\]\n$ '
export EDITOR="emacsclient"
export PATH=$PATH:/usr/local/bin:/usr/bin:/usr/local/sbin:/Applications/Emacs.app/Contents/MacOS/bin
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000
export NODE_PATH=/usr/local/lib/node
export LANG="en_US.UTF-8"
shopt -s histappend
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

function gp {
    git push origin `__git_ps1`
}

function sgm {
    rails g migration $@ | grep create  | awk '{print $3}' | xargs $EDITOR
}

# <3 RVM
if [[ -s /Users/federico/.rvm/scripts/rvm ]] ; then source /Users/federico/.rvm/scripts/rvm ; fi

source ~/.alias
source ~/.git-prompt.sh