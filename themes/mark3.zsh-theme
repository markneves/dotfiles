ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""

D=`date +"%a %d %b %I:%M%p"`
PROMPT='%m.%B%n(%b%F{green}%~%F{reset}%B)%b%(!.#.$) '
RPROMPT='%F{08}${D[0,-3]}${D[-2]:l}'