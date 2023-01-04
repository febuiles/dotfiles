source ~/.git-completion.bash
source ~/.alias
source ~/.git-prompt.sh
source ~/.env

export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=20000
shopt -s histappend

export PS1='\n\[\e[33m\]\w\033[36m\]$(__git_ps1 " (%s)")\[\033[00m\]\n$ '
export EDITOR="emacsclient"
export LANG="en_US.UTF-8"

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/Applications/Emacs.app/Contents/MacOS/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$HOME/.cargo/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:$PATH"

export RUBY_GC_MALLOC_LIMIT=60000000

export NODE_PATH=/usr/local/lib/node
export GOPATH=~/.go/

load_pyenv

# Load rbenv automatically by appending
# the following to ~/.bash_profile:

eval "$(rbenv init - bash)"
. "$HOME/.cargo/env"
