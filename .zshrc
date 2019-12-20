source $HOME/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle autojump
antigen bundle npm
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-apple-touchbar

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

################################################################
# Node
################################################################

export PATH="$PATH:./node_modules/.bin"

################################################################
# React-Native
################################################################

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$HOME/.fastlane/bin:$PATH"

################################################################
# Go
################################################################

export GOPATH=/Users/sebastianandreasson/Documents/code/iteam/github/skunkwörks
export PATH=$PATH:$GOPATH/bin

################################################################
# Flutter
################################################################

export PATH="$PATH:/Users/sebastianandreasson/Documents/code/flutter/bin"
export PATH="$PATH:/Users/sebastianandreasson/Documents/code/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

################################################################
# Java
################################################################

export JAVA_TOOL_OPTIONS=-Dfile.encoding=utf-8
export PATH=/Users/sebastianandreasson/Documents/code/java/jdk-12.0.1+12/Contents/Home/bin:$PATH
export JAVA_HOME=/Users/sebastianandreasson/Documents/code/java/jdk-12.0.1+12/Contents/Home

################################################################
# Python
################################################################

export PYENV_ROOT="/usr/local/opt/pyenv"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

################################################################
# Downloaded bin
################################################################

export PATH=/Users/sebastianandreasson/Documents/code/bin:$PATH

################################################################
# SYSTEM/LIB SETTINGS
################################################################

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
