# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gpfuchter/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
alias cardmarket-run8='~/Code/07-OldCM/cardmarket/.devcontainer/startPhp8Containers.sh'
alias cardmarket-bash8='docker exec -ti cardmarket_devcontainer-php8-1 bash'
alias vim=nvim
