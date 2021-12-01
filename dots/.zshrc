# Path to your oh-my-zsh installation.
USER=$(id -un)
export ZSH="/Users/$USER/.oh-my-zsh"


# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
aws
copyfile
docker
extract
autojump
git-auto-fetch
)

source $ZSH/oh-my-zsh.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
alias tf="terraform"

# PURE
autoload -U promptinit; promptinit
prompt pure

alias start-postgres-server="pg_ctl -D /usr/local/var/postgres start && brew services start postgresql"

# kubectl
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
alias k="kubectl"

# git
alias gbr="git branch | grep -v "master" | xargs git branch -D"

# k9s
export TERM=xterm-256color

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/frederiknygaardsvendsen/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/frederiknygaardsvendsen/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/frederiknygaardsvendsen/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/frederiknygaardsvendsen/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
