# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mark2" 

plugins=(git git-extras github node npm osx pip pyenv pylint python screen sublime vi-mode autopep8 bower macports compleat)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/zsh-history-substring-search.zsh
source ~/.oh-my-zsh/custom/zsh-autosuggestions/autosuggestions.zsh

#start autocomplete
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin"
# export SSH_KEY_PATH="~/.ssh/dsa_id"
