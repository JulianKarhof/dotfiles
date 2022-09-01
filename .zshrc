#touch .hushlogin Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Android
export ANDROID_SDK_ROOT=/Users/juliankarhof/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:/$PATH

# Go
export PATH=$HOME/go/bin:$PATH
alias ae=emulator -avd Pixel_3a_API_30_x86

# Editor Defaults
export VISUAL=vim;
export EDITOR=vim;

# ZSH vi mode
# source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git F-Sy-H zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='mvim'
fi

# Aliases
# For a full list of active aliases, run `alias`.
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# nvm related
export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

export PATH=/Users/juliankarhof/Development/flutter/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/juliankarhof/Development/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/juliankarhof/Development/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/juliankarhof/Development/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/juliankarhof/Development/google-cloud-sdk/completion.zsh.inc'; fi

# NeoVim stuff
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    alias nvim=nvr -cc split --remote-wait +'set bufhidden=wipe'
fi

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    export VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
    export EDITOR="nvr -cc split --remote-wait +'set bufhidden=wipe'"
else
    export VISUAL="nvim"
    export EDITOR="nvim"
fi

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
compdef _gnu_generic
setopt completeinword
setopt alwaystoend
setopt nolistambiguous

# Cargo completion
# source <(rustup completions zsh cargo)

# Use vim keys for the completion menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

export PATH="/usr/local/opt/openjdk@8/bin:$PATH"

# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh
#
# chruby ruby
alias python=/usr/bin/python3
alias pip=/usr/bin/pip3

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH

alias air=~/go/bin/air
alias date=gdate

alias ly="yadm enter lazygit"
alias mixer="pulsemixer"
export PATH=$PATH:/home/julian/.spicetify

# enable vi bindings
bindkey -v
