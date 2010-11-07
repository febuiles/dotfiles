export PS1='\u@\h \w `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\/` \n$ '

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

if [ "$TERM" != "dumb" ]; then
    export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h\n\[\e[33m\]\w\033[36m\] `git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\/`\[\033[00m\]\n$ '

fi

export EDITOR="emacsclient"
export ANT_HOME=/usr/local/ant
export ACK_OPTIONS='--no-color'
export RUBYOPT="-rubygems"

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
alias free='sh -c "du -sx /System/ &> /dev/null"'

. /Users/federico/.alias
