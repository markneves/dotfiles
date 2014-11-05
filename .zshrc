ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mark3"
CERTS="/Volumes/cloud/Certs"
m="core@107.170.225.210" #lower-case for shell convenience

plugins=(bower brew brew-cask compleat docker git-extras history-substring-search npm python redis-cli screen sublime tmux)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin"
export ANDROID_HOME="/usr/local/opt/android-sdk"
export EDITOR="vim"
export TERM='xterm-256color'

# Options
setopt  append_history
setopt  hist_no_store
setopt  multios
setopt  clobber

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
alias m='ssh -A $m'
alias vi='vim'
alias top='htop'
alias i='sudo iftop'
alias df='df -h'
alias du='du -h'
alias h='history | tail -25'
alias dps='docker ps'
alias di='docker images'
alias dstop='docker stop $(docker ps -a -q)' #stop all
alias drm='docker rm $(docker ps -a -q)' #rm all containers
alias dri='docker rmi $(docker images -q)' #rm all images
dbuild() { docker build -t=$1 .; }

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