ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

function print_date() {
  print $(date +'%a %b %d %I:%M %p')
}

PROMPT='${BOLD_RED}%n@%m:${RESET}%~ %(!.#.$) '
RPROMPT='%F{8}$(print_date)'
