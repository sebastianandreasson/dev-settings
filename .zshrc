source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle autojump
antigen bundle npm
antigen bundle lukechilds/zsh-nvm

# syntax
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme robbyrussell

#apply
antigen apply

################################################################
# Functions
################################################################
itermprofile () {
  echo -e "\033]50;SetProfile=$1\a"
}

################################################################
# Scripts
################################################################

SCRIPT_PATH=$PATH:$HOME/bin

alias dockerPush="sh $SCRIPT_PATH/dockerPush.sh"
