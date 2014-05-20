ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

function precmd {
   D=$(date +'%a %d %b %I:%M%p')
}
PROMPT='%m.%n(%F{green}%~%F{reset})%(!.#.$) '
RPROMPT='%F{08}${D[0,-3]}${D[-2]:l}'