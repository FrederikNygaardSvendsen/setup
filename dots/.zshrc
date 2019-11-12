# Path to your oh-my-zsh installation.
USER=$(id -un)
export ZSH="/Users/$USER/.oh-my-zsh"


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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
alias tf="terraform"
