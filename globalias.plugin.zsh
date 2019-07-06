GLOBALIAS_EXCLUDE=()

_globalias_check_exclusion() {
  for e in ${GLOBALIAS_EXCLUDE[@]}; do
    last_command=$(echo $1 | sed -e 's/.*|//')
    [[ "$last_command" =~ "\b$e\b" ]] && return 0
  done
  return 1
}

globalias() {
  _globalias_check_exclusion $LBUFFER
  if [[ $? == 1 ]]; then
    zle _expand_alias
    # zle expand-word
  fi
  zle self-insert
}

zle -N globalias
bindkey ' ' globalias
bindkey '^[ ' magic-space # Alt+Space
