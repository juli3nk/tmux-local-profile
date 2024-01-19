#!/usr/bin/env bash

[ -f ~/.paths ] && source ~/.paths

PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd .. && pwd)"
source "${PLUGIN_DIR}/helper.sh"

show_profile() {
  jq -r '.name' ~/.config/local/profile.json
}


main() {
  local display_label display_text

  display_label="profile"
  display_text="$(show_profile)"

  local label="#[fg=$thm_black,bg=$thm_orange]${display_label} #[default]"
  local text="#[fg=$thm_white,bg=$thm_gray] ${display_text} #[default]"

  local opt_sep_left=$(get_tmux_option "@server_left_separator" "")
  local opt_sep_right=$(get_tmux_option "@server_right_separator" "")

  if [ -n "$opt_sep_left" ]; then
    sep_left="#[fg=$thm_orange,bg=$thm_black]${opt_sep_left}█#[default]"
    sep_right="#[fg=$thm_gray,bg=$thm_black]${opt_sep_right}#[default]"

    echo "${sep_left}${label}${text}${sep_right}"
  else
    echo "${label}${text}"
  fi
}


main
