source ~/.alias
source ~/.git-prompt.sh
source ~/.env

export HISTCONTROL=erasedups:ignorespace
export HISTSIZE=20000
shopt -s histappend

export PS1='\n\[\e[33m\]\w\033[36m\]$(__git_ps1 " (%s)")\[\033[00m\]\n$ '
export EDITOR="emacsclient"
export PATH="$PATH:/Applications/Emacs.app/Contents/MacOS/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$HOME/.cargo/bin"
export LANG="en_US.UTF-8"
export PATH=$PATH:$HOME/.rvm/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin

export PATH="/Applications/Emacs.app/Contents/MacOS/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$HOME/.cargo/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:$PATH"

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
export RUBY_GC_MALLOC_LIMIT=60000000

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
export NODE_PATH=/usr/local/lib/node
export GOPATH=~/.go/

fi
