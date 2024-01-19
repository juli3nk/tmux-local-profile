#!/usr/bin/env bash

[ -f ~/.paths ] && source ~/.paths

context_name=$(local-profile ls | fzf-tmux -d 50% -r 20%)

if [ -z "$context_name" ]; then exit 0 ; fi

local-profile use "$context_name"
