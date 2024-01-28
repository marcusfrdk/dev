#!/bin/bash

# Create the basepath if it doesn't exist
if [[ ! -d "$DEV_BASEPATH" ]]; then
    mkdir -p "$DEV_BASEPATH"
fi

# Enable autocomplete for the $DEV_BASEPATH directory
_dev_complete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -d -- "${DEV_BASEPATH}/${cur}" | sed "s|${DEV_BASEPATH}/||") )
}

# 'dev' command
dev() {
    local PROJECT="$1"

    if [[ -n "$PROJECT" ]]; then
        local PROJECT_PATH="$DEV_BASEPATH/$PROJECT"
        if [[ -d "$PROJECT_PATH" ]]; then
            $DEV_IDE $PROJECT_PATH

            if [[ "$DEV_SHOULD_CLOSE" -eq 1 ]]; then
                exit
            fi
        else
            echo "Project '$PROJECT' does not exist"
        fi
    else
        cd "$DEV_BASEPATH"
    fi
}

complete -F _dev_complete dev
