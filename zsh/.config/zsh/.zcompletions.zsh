# Add kubectl completions
command -v kubectl > /dev/null 2>&1 && source <(kubectl completion zsh)
# Add docker completions
command -v docker > /dev/null 2>&1 && source <(docker completion zsh)