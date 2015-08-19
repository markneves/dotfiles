source "$HOME/.antigen/antigen.zsh"

# User configuration
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin"
export ANDROID_HOME="/usr/local/opt/android-sdk"
export EDITOR="vim"
export TERM='xterm-256color'

# Options
setopt append_history
setopt hist_no_store
setopt multios
setopt clobber
antigen use oh-my-zsh
# zmodload zsh/terminfo

# Bundles
antigen bundle atom
antigen bundle aws
#antigen bundle bower
antigen bundle brew
antigen bundle brew-cask
antigen bundle compleat
antigen bundle docker
antigen bundle git
antigen bundle git-extras
antigen bundle npm
antigen bundle python
antigen bundle redis-cli
antigen bundle screen
antigen bundle tmux
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen bundle tarruda/zsh-autosuggestions  # buggy atm
#
# zle-line-init() {
#   zle autosuggest-start
# }
# zle -N zle-line-init

# Theme
antigen theme markneves/dotfiles themes/mark4

antigen apply
if [[ -a "$HOME/.zsh_hosts" ]]; then
    source "$HOME/.zsh_hosts"
fi
source "$HOME/.zsh_alias"
