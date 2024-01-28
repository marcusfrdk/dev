#!/bin/bash

# Configuration
SRC_PATH="$(dirname "$(realpath $0)")/dev.sh"
DST_PATH="$HOME/.bashrc" # session file e.g. .bashrc, .zshrc

DEV_IDE=nvim # editor, e.g. nvim, code, etc.
DEV_BASEPATH="$HOME/Development" # where to store projects
DEV_SHOULD_CLOSE=0 # 0=keep shell open, 1=close shell after IDE process exits

START_DELIMITER="# ---start-dev---"
END_DELIMITER="# ---end-dev---"
