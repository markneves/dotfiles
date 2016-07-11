function print_date() {
  print $(date +'%a %b %d %I:%M %p')
}

# credit to omz/clean
PROMPT='%{$fg[$NCOLOR]%}%B$app - DS%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%} %(!.#.$) '
RPROMPT='${RESET}%F{8}$(print_date)${RESET}'
