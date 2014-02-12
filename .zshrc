# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mark2" 
CERTS="/Volumes/Boxcryptor Classic/certs"

plugins=(git git-extras github node npm osx pip pyenv pylint python screen sublime vi-mode autopep8 bower macports compleat)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/zsh-history-substring-search.zsh
source ~/.oh-my-zsh/custom/zsh-autosuggestions/autosuggestions.zsh

# start autocomplete
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin"

# Aliases
alias ls='ls -F -G'
alias la='ls -F -A -G'
alias lg='ls -F -g -G'
alias lh='ls -lh -G'
alias nano='nano -w'
alias s=screen
alias sr='screen -r'
alias sls='screen -ls'
alias mv='mv -v'
alias taskio='ssh -i  "$CERTS/taskio-dev.pem" ubuntu@54.225.159.3'
#eval `dircolors -b /etc/DIR_COLORS`

# export SSH_KEY_PATH="~/.ssh/dsa_id"