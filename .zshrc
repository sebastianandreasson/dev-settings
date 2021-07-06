source $HOME/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle npm
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-apple-touchbar
# syntax
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme robbyrussell
RPROMPT="[%D{%y/%m/%f}|%@]"
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
# Flutter
################################################################
export PATH="$PATH:/Users/xandse/Documents/dev/flutter/bin"
export PATH="$PATH:/Users/xandse/Documents/dev/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
################################################################
# Java
################################################################
export JAVA_TOOL_OPTIONS=-Dfile.encoding=utf-8
export PATH=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
################################################################
# Python
################################################################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"
export PATH="$PATH:/usr/local/anaconda3/bin"

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python@3.9/bin/python3.9
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
# source /usr/local/anaconda3/bin/virtualenvwrapper.sh

################################################################
# Serverless
################################################################
export PATH="$HOME/.serverless/bin:$PATH"
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

# Created by `pipx` on 2021-05-06 12:28:15
export PATH="$PATH:/Users/xandse/.local/bin"
