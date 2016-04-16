source "${HOME}/.zgen/zgen.zsh"

# User configuration
export GOPATH="$HOME/env/go"
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$GOPATH/bin"
export ANDROID_HOME="/usr/local/opt/android-sdk"
export EDITOR="vim"
export TERM='xterm-256color'
export COMPLETION_WAITING_DOTS="true"
export DISABLE_AUTO_TITLE="false"

# Options
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_no_store
setopt share_history
setopt multios
setopt clobber
setopt correct

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)*==34=34}:${(s.:.)LS_COLORS}")';

if [[ -a "$HOME/.zsh_hosts" ]]; then
    source "$HOME/.zsh_hosts"
fi

if [[ -a "$HOME/.zsh_alias" ]]; then
    source "$HOME/.zsh_alias"
fi

# Plugins
# zgen oh-my-zsh plugins/aws
zgen oh-my-zsh plugins/brew
zgen oh-my-zsh plugins/brew-cask
zgen oh-my-zsh plugins/compleat
zgen oh-my-zsh plugins/docker
zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/git-extras
# zgen oh-my-zsh plugins/npm  #laggy
zgen oh-my-zsh plugins/python
# zgen oh-my-zsh plugins/redis-cli
zgen oh-my-zsh plugins/screen
zgen oh-my-zsh plugins/tmux
zgen load zsh-users/zsh-completions
zgen load zsh-users/zsh-syntax-highlighting
zgen load markneves/dotfiles themes/mark5
