# Use powerline
USE_POWERLINE="true"

# -- BASIC CONFIG START --

# Enable a colored prompt
autoload -U promptinit
promptinit

# Define colors (optional, but good for readability)
# See 'man zshmisc' or 'man zshzle' for more color codes
# %F{color_name} sets foreground color
# %f resets foreground color
# %K{color_name} sets background color
# %k resets background color
# %B sets bold
# %b resets bold
# %U sets underscore
# %u resets underscore

# Prompt format: username@host:working_directory$
PROMPT='%{%F{green}%}%n%{%f%}%{%F{yellow}%}@%{%f%}%{%F{blue}%}%m%{%f%}:%{%F{cyan}%}%c%{%f%}%{%B%}%# %{%b%}'

# Enable completion and autosuggestions (highly recommended for Zsh)
autoload -Uz compinit
compinit

# If you have zsh-autosuggestions installed
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# If you have zsh-syntax-highlighting installed
# source /path/to/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Append to history, don't overwrite
setopt appendhistory

# Share history across all sessions
setopt sharehistory

# Don't record dupes
setopt hist_ignore_dups

# Case-insensitive completion
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Automatically change directory (e.g., typing '~/Documents' and pressing Enter)
setopt autocd

# Correct spelling errors during completion
setopt correct

# Enable the bell when completion is ambiguous
# setopt complete_bell

# Other useful options
# case-insensitive globbing
# setopt nocaseglob

# If you want to use external tools like 'ls' with colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# -- BASIC CONFIG END--

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gpfuchter/.zshrc'

# End of lines added by compinstall

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Env
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

## Set GOPATH based on XDG_DATA_HOME
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export GOAMD64="v2"

export PATH=$PATH:/home/gpfuchter/.scripts:$GOPATH/bin
export EDITOR=nvim

#Aliases
alias vim=nvim
function kb-caps-swap() {
    hyprctl keyword input:kb_options "caps:swapescape"
}
function kb-caps-default() {
    hyprctl keyword input:kb_options ""
}
function screen-tv() {
    hyprctl keyword monitor HDMI-A-1,1920x1080,1920x0,1
}
