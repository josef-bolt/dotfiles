# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:/usr/local/sbin"
export GITHUB_REGISTRY_TOKEN=

# Path to your oh-my-zsh installation.
export ZSH="/Users/user/.oh-my-zsh"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

ZSH_THEME="gruvbox"
SOLARIZED_COLOR="dark"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Rails crap
alias rdbm="bin/rails db:migrate"
alias rdbr="bin/rails db:rollback"
alias rc="bin/rails console"
alias rs="bin/rails s"
alias sneak="bundle exec rake sneakers:run"

#Git crap
alias gadd="git add"
alias gcommit="git commit"
alias gcheckout="git checkout"
alias gpush="git push"
alias gpull="git pull"
alias grebase="git rebase"

#Overwatch project stuff
alias overwatch_connection="DB_CONN_STRING=jdbc:postgresql://localhost:5432/overwatch_dev"
alias overwatch_connection_test="DB_CONN_STRING=jdbc:postgresql://localhost:5432/overwatch_test"
alias overwatch_status="./gradlew -Pflyway.url=${DB_CONN_STRING} flywayInfo"
alias overwatch_migrate="./gradlew -Pflyway.url=${DB_CONN_STRING} flywayMigrate"
alias overwatch_clean="./gradlew  -Pflyway.url=${DB_CONN_STRING} flywayClean"
alias overwatch_run="java -jar build/libs/overwatch-1.0.0.jar  --spring.profiles.active=dev"

source $ZSH/oh-my-zsh.sh
prompt_context(){}
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
