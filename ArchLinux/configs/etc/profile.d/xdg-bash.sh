# Define XDG paths if they aren't already set
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"

# Tell Bash where to save its command history
mkdir -p "$XDG_DATA_HOME/bash"
export HISTFILE="$XDG_DATA_HOME/bash/history"

# Source login specific profile if it exists
if [ -n "$BASH_VERSION" ] && [[ "$0" == -* ]]; then
    if [ -f "$XDG_CONFIG_HOME/bash/bash_profile" ]; then
        source "$XDG_CONFIG_HOME/bash/bash_profile"
    fi
fi
