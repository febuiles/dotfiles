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
alias ls='ls -G'
alias l='ls'
alias e='emacs'

alias sd='svn diff'
alias m='mate'

alias commit='git commit -v'
alias pull='git pull'
#alias gp='git push origin master'
alias gc='git checkout'
alias gb='git branch -av'
alias gd='git diff'
alias gst='git status'
alias gfp='git-format-patch'
alias gbb='git bisect bad'
alias gbg='git bisect good'
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

alias vps='ssh federico@vps'
alias vom='ssh vom@vom'
alias prog='cd /Users/federico/programacion'
alias reload='. /Users/federico/.bashrc'

alias cpd='cap deploy'
alias rs='rake spec'      

export PATH=$PATH:/Users/federico/programacion/jruby/bin:/usr/texbin:/usr/local/bin:/usr/local/ant/bin:/sw/bin

function pless {
    pygmentize $1 | less -r
}

function gp {
    current_branch=`git branch | grep \* | awk '{print $2}'`
    git push origin $current_branch
}