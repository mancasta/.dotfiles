# ~/.profile: executed by the command interpreter for login shells.

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Add kubectl completions
command -v kubectl > /dev/null 2>&1 && source <(kubectl completion zsh)
# Add docker completions
command -v docker > /dev/null 2>&1 && source <(docker completion zsh)
