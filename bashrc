export PS1='\u@\h \w `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\/` \n$ '

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

if [ "$TERM" != "dumb" ]; then
    export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \n\[\e[33m\]\w\033[36m\] `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\/`\[\033[00m\]\n$ '

fi

export EDITOR="emacsclient"
export ANT_HOME=/usr/local/ant
export ACK_OPTIONS='--no-color'
export RUBYOPT="-rubygems"
alias ls='ls -G'
alias l='ls'
alias e='emacs'
alias sd='svn diff'
alias m='mate'

alias commit='git commit -v'
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
alias lola='git log --graph --decorate --pretty=oneline --abbrev-commit'

alias ci='./bin/mspec ci'

#alias emacs='emacsclient --no-wait'
alias vi='emacsclient --no-wait'
alias msr='mspec -tr'
alias msx='mspec'
alias msj='mspec -tjruby'

alias ss='ruby script/server'
alias sg='ruby script/generate'
alias sc='ruby script/console'
alias sp='ruby script/plugin'
alias s='shotgun'

alias vps='ssh federico@vps'
alias vom='ssh vom@vom'
alias prog='cd /Users/federico/programacion'
alias reload='. /Users/federico/.bashrc'

alias cpd='cap deploy'
alias rs='rake spec'
alias hd='git push heroku master'

alias gt='nosetests --with-gae'

export PATH=$PATH:/usr/local/bin:/usr/local/libexec/git-core/:/usr/local/texlive/2009basic/bin/universal-darwin

function pless {
    pygmentize $1 | less -r
}

function gp {
    current_branch=`git branch | grep \* | awk '{print $2}'`
    git push origin $current_branch
}

AMAZON_ACCESS_KEY_ID='AKIAJM42B3P6P7XISIYA'
AMAZON_SECRET_ACCESS_KEY='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'

# <3 RVM
if [[ -s /Users/federico/.rvm/scripts/rvm ]] ; then source /Users/federico/.rvm/scripts/rvm ; fi
