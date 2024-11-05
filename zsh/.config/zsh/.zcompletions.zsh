# Add kubectl completions
command -v kubectl > /dev/null 2>&1 && source <(kubectl completion zsh)
# Add docker completions
command -v docker > /dev/null 2>&1 && source <(docker completion zsh)

_cisco-complete-slvm-hosts() {
    local parts
    local host
    local dc
    parts=(${(s/ /)BUFFER})
    parts=(${(s/./)parts[-1]})
    [[ "$parts[1]" =~ '^(ucs|c)[0-9]+$' ]] && host="$parts[1]" || return
    [[ "$parts[2]" == "compute" ]] && dc="$parts[3]" || dc="$parts[2]"

    # Full match
    if [[ "$dc" =~ '^(lab-)?[a-z]{3}[0-9]$' ]]; then
      compadd -U -- "${host}.compute.${dc}.edc.strln.net"
      return
    fi
        
    # Partial match
    if [[ "$dc" =~ '^(lab-)?[a-z]{3}$' ]]; then
      compadd -S '' -U -- "${host}.compute.${dc}"
      return
    fi
}

zstyle -e ':completion:*:hosts' hosts _cisco-complete-slvm-hosts