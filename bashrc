export PS1='\u@\h \w\n$ '

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

if [ "$TERM" != "dumb" ]; then
    alias ls='ls --color'
    export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \n\[\e[33m\]\w\[\e[0m\]\n$ '
fi

export EDITOR="emacsclient"

alias ls='ls -G'
alias l='ls'
alias e='emacs'

alias sd='svn diff'
alias m='mate'

alias commit='git commit -v'
alias pull='git pull'
alias push='git push origin master'
alias gc='git checkout'
alias gb='git branch -av'
alias gd='git diff'
alias gst='git status'
alias gfp='git-format-patch'
alias ci='./bin/mspec ci'

alias vi='emacsclient'
alias msr='mspec -tr'
alias msx='mspec'
alias msj='mspec -tjruby'

alias ss='ruby script/server'
alias sg='ruby script/generate'
alias sc='ruby script/console'
alias sp='ruby script/plugin'

alias vps='ssh federico@vps'

export PATH=$PATH:/usr/local/ruby1.9/bin:/Users/federicobuiles/programacion/jruby/bin:/Users/federicobuiles/programacion/rbx/shotgun:/Users/federicobuiles/programacion/ruby-1.8/bin:/Users/federicobuiles/programacion/mri/build/*/bin:/Users/federicobuiles/programacion/mri/build/p114/bin:/Users/federicobuiles/programacion/mri/build/1.8.7/bin:/Users/federicobuiles/programacion/mri/build/trunk/bin:/Users/federicobuiles/programacion/mri/build/230/bin:/Users/federicobuiles/programacion/mri/build/1.8.6/bin:/Users/federicobuiles/programacion/mri/build/186/bin:/Users/federicobuiles/programacion/mri/build/187/bin







