source ~/.bash_profile

if [ -z "$CODESPACES" ]; then
  source <(kubectl completion bash)
  export CGO_LDFLAGS_ALLOW="^-[Il].*$"
  export PATH=$PATH:/usr/local/bin
fi
