# ~/.zshenv: executed by the command interpreter for login shells.
# if $ZDOTDIR is not set, $HOME is used instead.

# if running zsh
if [ -n "$ZSH_VERSION" ]; then
    export ZDOTDIR="$HOME/.config/zsh";
    export ZCACHE="$HOME/.cache/zsh";
    mkdir -p $ZCACHE
    mkdir -p $ZDOTDIR
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Added by homebrew install
if command -v /opt/homebrew/bin/brew &> /dev/null; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export HOMEBREW_PREFIX=$(brew --prefix)
fi

# Added by rundeck install
export PATH="$HOME/.local/bin/rd-2.0.8/bin:$PATH"

# Added by openjdk install
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Added by mysql-client
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Added by wezterm
export PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
