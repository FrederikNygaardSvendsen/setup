# Path to your oh-my-zsh installation.
export ZSH="/Users/frederiknygaardsvendsen/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="minimal"

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
)

source $ZSH/oh-my-zsh.sh

# Fix for autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
alias tf="terraform"

# Set Paths
## Homebrew
export PATH=$PATH:/usr/local/Homebrew/bin

