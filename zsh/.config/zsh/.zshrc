# Add directories to PATH
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# Set history configuration
HISTFILE=~/.cache/zsh/.zsh_history
HISTSIZE=16384
SAVEHIST=16384

# Prompt configuration
## Starship config is done in ~./config/starship.toml
if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi

# User configuration
## zsh-users (https://github.com/zsh-users)
## zsh-history-substring-search
export HISTORY_SUBSTRING_SEARCH_FUZZY=true
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
## zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
## zsh-autosuggestions
export ZSH_AUTOSUGGEST_STRATEGY=(completion history match_prev_cmd)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
## zsh-autoenv
source ~/.local/bin/zsh-autoenv/autoenv.zsh

## atuin history
eval "$(atuin init zsh --disable-up-arrow)"

# Alias definitions
if [ -f "$ZDOTDIR/.zaliases.zsh" ]; then
  . $ZDOTDIR/.zaliases.zsh
fi

# Variables definitions
if [ -f "$ZDOTDIR/.zvariables.zsh" ]; then
  .  $ZDOTDIR/.zvariables.zsh
fi

# Functions
if [ -f "$ZDOTDIR/.zfunctions.zsh" ]; then
  .  $ZDOTDIR/.zfunctions.zsh
fi

# Completions
if [ -f "$ZDOTDIR/.zcompletions.zsh" ]; then
  .  $ZDOTDIR/.zcompletions.zsh
fi
