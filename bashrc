PATH=$PATH:/usr/local/sbin

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="/Users/boblin/.nvm"

# This loads android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# need install rvm manually
# Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# This loads bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# This loads git-completion
[ -f $HOME/Documents/rc-repo/scripts/git-completion.bash ] && source $HOME/Documents/rc-repo/scripts/git-completion.bash

#[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$HOME/bin:$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init -)"
