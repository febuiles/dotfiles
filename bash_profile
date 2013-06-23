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
    current_branch=`git branch | grep \* | awk '{print $2}'`
    git push origin $current_branch
}

function parse_git_deleted {
  [[ $(git status 2> /dev/null | grep deleted:) != "" ]] && echo "-"
}

function parse_git_added {
  [[ $(git status 2> /dev/null | grep "Untracked files:") != "" ]] && echo '+'
}

function parse_git_modified {
  [[ $(git status 2> /dev/null | grep modified:) != "" ]] && echo "*"
}

function parse_git_dirty {
  echo "$(parse_git_added)$(parse_git_modified)$(parse_git_deleted)"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

function sgm {
    rails g migration $@ | grep create  | awk '{print $3}' | xargs $EDITOR
}

function rr {
    while [ ! -f Gemfile ] && [ `pwd` != $HOME ]
    do
        cd ..
    done
}

# <3 RVM
if [[ -s /Users/federico/.rvm/scripts/rvm ]] ; then source /Users/federico/.rvm/scripts/rvm ; fi

source /Users/federico/.alias
