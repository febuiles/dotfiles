source ~/.bash_profile
export PATH=$PATH:/usr/local/bin
source <(kubectl completion bash)

export CGO_LDFLAGS_ALLOW="^-[Il].*$"
