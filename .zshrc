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
# React-Native
################################################################

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

################################################################
# SYSTEM/LIB SETTINGS
################################################################

# Python stuff
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export PYENV_ROOT="/usr/local/opt/pyenv"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

export PATH="$PATH:./node_modules/.bin"

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
