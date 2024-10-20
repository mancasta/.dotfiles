# ~/.zshenv: executed by the command interpreter for login shells.
# if $ZDOTDIR is not set, $HOME is used instead.

# if running zsh
if [ -n "$ZSH_VERSION" ]; then
    export ZDOTDIR="$HOME/.config/zsh";
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Added by homebrew install
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by rundeck install
export PATH="$HOME/.local/bin/rd-2.0.8/bin:$PATH"

# Added by openjdk install
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Added by mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# iterm2 shell integration
test -e /Users/mancasta/.iterm2_shell_integration.zsh && source /Users/mancasta/.iterm2_shell_integration.zsh || true

# Added by kubectl install
# source <(kubectl completion zsh)
