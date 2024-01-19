#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

script="#(${CURRENT_DIR}/scripts/profile.sh)"
pattern="\#{profile-info}"

source "${CURRENT_DIR}/helper.sh"

tmux bind-key P run-shell -b "${CURRENT_DIR}/scripts/bindkey-profile.sh"

update_tmux_option "status-right"
