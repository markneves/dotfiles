ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mark3"
CERTS="/Volumes/Boxcryptor Classic/certs"
m="$USER@54.85.249.16" #lower-case for shell convenience
t="$USER@107.182.132.54"

plugins=(bower brew compleat docker git-extras history-substring-search npm python redis-cli screen sublime tmux)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"
export ANDROID_HOME="/usr/local/opt/android-sdk"
export EDITOR="vim"

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
alias df='df -h'
alias du='du -h'
alias h='history | tail -25'

# Other plugins
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

source ~/.oh-my-zsh/custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/zsh-autosuggestions/autosuggestions.zsh
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init
bindkey '^T' autosuggest-toggle

#eval `dircolors -b /etc/DIR_COLORS`
#export SSH_KEY_PATH="~/.ssh/dsa_id"
