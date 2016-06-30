function print_date() {
  print $(date +'%a %b %d %I:%M %p')
}

PROMPT='%{$fg[$NCOLOR]%}%B%m%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
RPROMPT='${RESET}${WHITE}$(print_date)${RESET}'
