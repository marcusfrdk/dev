#!/bin/bash

source "$(dirname "$(realpath $0)")/config.sh"
sed -i "/$START_DELIMITER/,/$END_DELIMITER/d" $DST_PATH
