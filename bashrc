source ~/.bash_profile
export PATH=$PATH:/usr/local/bin
source <(kubectl completion bash)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
