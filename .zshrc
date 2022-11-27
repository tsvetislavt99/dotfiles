plugins=(git)

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

function start_mongo() {
  sudo mongod --dbpath "./data/db"
}

function stop_mongo() {
  brew services stop mongodb-community
}

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
