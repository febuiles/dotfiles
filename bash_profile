export PS1='\u@\h \w$(__git_ps1)\n$ '

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

if [ "$TERM" != "dumb" ]; then
    export PS1='\n\[\e[33m\]\w\033[36m\]$(__git_ps1)\[\033[00m\]\n$ '
fi

export EDITOR="emacsclient"
export ANT_HOME=/usr/local/ant
export ACK_OPTIONS='--no-color'
# export RUBYOPT="-rubygems"

export PATH=$PATH:/usr/local/bin:/usr/local/libexec/git-core/:/usr/local/texlive/2009basic/bin/universal-darwin:/Users/federico/bin

function gp {
    current_branch=`git branch | grep \* | awk '{print $2}'`
    git push origin $current_branch
}

# <3 RVM
if [[ -s /Users/federico/.rvm/scripts/rvm ]] ; then source /Users/federico/.rvm/scripts/rvm ; fi

source /Users/federico/.alias
source /Users/federico/.git-completion.sh

if [[ -f "$HOME/.amazon_keys" ]]; then
    source "$HOME/.amazon_keys";
fi