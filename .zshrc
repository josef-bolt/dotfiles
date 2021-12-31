# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/joe/.oh-my-zsh"

ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

#Rails crap
alias rdbm="bin/rails db:migrate"
alias rdbr="bin/rails db:rollback"
alias rc="bin/rails console"
alias rs="bin/rails s"

#Git crap
alias gai="git add -i"
alias gap="git add -p"
alias gco="git commit"
alias gch="git checkout"
alias gcl="git clone"
alias gpush="git push"
alias gpull="git pull"
alias gr="git rebase"

. /usr/local/opt/asdf/libexec/asdf.sh

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
