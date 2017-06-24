PATH=$PATH:/usr/local/sbin

export CLICOLOR=1
export LS_COLORS=1
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="/Users/boblin/.nvm"

# This loads bash_prompt
[[ -f "$HOME/Documents/rc-repo/bash_prompt" ]] && source "$HOME/Documents/rc-repo/bash_prompt"

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# This loads git-bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$HOME/bin:$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
