export ZSH="/Users/frederiknygaardsvendsen/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
copyfile
autojump
extract
git-auto-fetch
)

source $ZSH/oh-my-zsh.sh
export GPG_TTY=$(tty)

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"