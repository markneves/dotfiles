ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

function precmd {
   D=$(date +'%a %d %b %I:%M%p')
}
PROMPT='%n%F{15}@%m%F{reset}:%F{10}%~%F{reset}%(!.#.$) '
RPROMPT='%F{8}${D[0,-3]}${D[-2]:l}'
