ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mark3" 
CERTS="/Volumes/Boxcryptor Classic/certs"
m="$USER@54.85.249.16" #lower-case for shell convenience

plugins=(brew git git-extras github node npm osx pip pyenv pylint python screen sublime vi-mode autopep8 bower compleat)

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
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"
export ANDROID_HOME="/usr/local/opt/android-sdk"

# Aliases
alias ls='ls -F $COLOR_MOD'
alias lg='ls -F -g $COLOR_MOD'
alias la='ls -F -A $COLOR_MOD'
alias lh='ls -lh $COLOR_MOD'
alias nano='nano -w'
alias s=screen
alias sr='screen -r'
alias sls='screen -ls'
alias mv='mv -v'
alias m='ssh -i "$CERTS/mKey.pem" $m'
alias mscp='scp -i "$CERTS/mKey.pem"'
alias vi='vim'
alias top='htop'
alias i='sudo iftop'

#eval `dircolors -b /etc/DIR_COLORS`
#export SSH_KEY_PATH="~/.ssh/dsa_id"
