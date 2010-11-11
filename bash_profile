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

export PATH=$PATH:/usr/local/bin:/usr/local/libexec/git-core/:/usr/local/texlive/2009basic/bin/universal-darwin

function pless {
    pygmentize $1 | less -r
}

function gp {
    current_branch=`git branch | grep \* | awk '{print $2}'`
    git push origin $current_branch
}

# <3 RVM
if [[ -s /Users/federico/.rvm/scripts/rvm ]] ; then source /Users/federico/.rvm/scripts/rvm ; fi

# Free some mem.


source /Users/federico/.alias
source /Users/federico/.git-completion.sh


# .alias contents

alias ls='ls -G'
alias l='ls'
alias e='emacs'

alias gpl='git pull origin master'
alias pull='git pull'
alias gc='git checkout'
alias gb='git branch -v'
alias gd='git diff'
alias gst='git status'
alias gfp='git-format-patch'
alias gbb='git bisect bad'
alias gbg='git bisect good'
alias gl='git log'
alias git=hub

alias emacs='emacsclient --no-wait'
alias vi='emacsclient --no-wait'

alias ss='rails server'
alias sg='rails generate'
alias sc='rails console'
alias sp='rails plugin'
alias s='shotgun'
alias mig='rake db:migrate'

alias cpd='cap deploy'
alias rs='rake spec'
alias hd='git push heroku master'

