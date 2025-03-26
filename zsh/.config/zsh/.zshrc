# Add directories to PATH
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# Set command completions
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Set case-insensitive completions
setopt NO_CASE_GLOB
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Set history configuration
HISTFILE=~/.cache/zsh/.zsh_history
HISTSIZE=8192
SAVEHIST=8192

# Prompt configuration
prefered_prompt="starship" # options: starship, ohmyzsh

config_starship() {
    # Starship prompt
    if command -v starship &> /dev/null; then
        eval "$(starship init zsh)"
    fi
}

config_omz() {
    # Path to your oh-my-zsh installation.
    export ZSH="$ZDOTDIR/ohmyzsh"

    # Set name of the theme
    ZSH_THEME="robbyrussell"
    # ZSH_THEME="malcak"

    # Uncomment the following line to use case-sensitive completion.
    # CASE_SENSITIVE="true"

    # Uncomment the following line if you want to disable marking untracked files
    # under VCS as dirty. This makes repository status check for large repositories
    # much, much faster.
    DISABLE_UNTRACKED_FILES_DIRTY="true"

    # Would you like to use another custom folder than $ZSH/custom?
    # ZSH_CUSTOM=/path/to/new-custom-folder

    # Which plugins would you like to load?
    # Standard plugins can be found in $ZSH/plugins/
    # Custom plugins may be added to $ZSH_CUSTOM/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    # Add wisely, as too many plugins slow down shell startup.
    plugins=(
        git
        # docker
        # kubectl
        # python
        # virtualenv
    )

    # Python plugin configuration
    # Uncomment the following line to automatically activate the venv virtual
    # environment when entering a directory containing `<venv-name>/bin/activate`,
    # and automatically deactivate it when navigating out of it.
    # export PYTHON_AUTO_VRUN=true

    source $ZSH/oh-my-zsh.sh
}

case "${prefered_prompt}" in
    starship)
        config_starship ;;
    ohmyzsh)
        config_omz ;;
esac

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
