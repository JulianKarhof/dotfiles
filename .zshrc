# p10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ininialization code with confirmation prompts above this line

# oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

if [ -f ~/.secrets ]; then
    source ~/.secrets
else
    print "404: ~/.secrets not found."
fi

# android tooling
export ANDROID_SDK_ROOT=/Users/juliankarhof/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:/$PATH

# go
export PATH=$HOME/go/bin:$PATH
alias ae=emulator -avd Pixel_3a_API_30_x86

# editor defaults
export VISUAL=nvim;
export EDITOR=nvim;

ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_UPDATE_PROMPT="true"

# plugins
plugins=(git F-Sy-H zsh-autosuggestions zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='mvim'
fi

# aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias air=~/go/bin/air
alias date=gdate
alias ly="yadm enter lazygit"
alias mixer="pulsemixer"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# gcloud sdk path
if [ -f '/Users/juliankarhof/Development/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/juliankarhof/Development/google-cloud-sdk/path.zsh.inc'; fi

# shell completion for gcloud
if [ -f '/Users/juliankarhof/Development/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/juliankarhof/Development/google-cloud-sdk/completion.zsh.inc'; fi

# nvim stuff
if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    alias nvim=nvr -cc split --remote-wait +'set bufhidden=wipe'
fi

if [ -n "$NVIM_LISTEN_ADDRESS" ]; then
    export VISUAL="nvr -cc split --remote-wait +'set bufhidden=wipe'"
    export EDITOR="nvr -cc split --remote-wait +'set bufhidden=wipe'"
elif [[ -n $SSH_CONNECTION ]]; then
    export VISUAL="nvim"
    export EDITOR="nvim"
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

# spicetify
export PATH=$PATH:~/.spicetify

# java
export PATH="/usr/local/opt/openjdk@8/bin:$PATH"

# python
alias python=/usr/bin/python3
alias pip=/usr/bin/pip3

# path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=$PATH:/home/julian/.spicetify

# nvm
[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec

# lazygit yadm
alias yadm="lazygit -ucd ~/.local/share/yadm/lazygit -w ~ -g ~/.local/share/yadm/repo.git"

# pnpm
alias pn=pnpm

# android
export ANDROID_SDK_ROOT=/home/julian/Android/Sdk
