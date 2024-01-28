#!/bin/bash

source "$(dirname "$(realpath $0)")/uninstall.sh"

echo $START_DELIMITER >> $DST_PATH
echo "DEV_IDE="$DEV_IDE >> $DST_PATH
echo "DEV_BASEPATH="$DEV_BASEPATH >> $DST_PATH
echo "DEV_SHOULD_CLOSE="$DEV_SHOULD_CLOSE >> $DST_PATH
echo "" >> $DST_PATH
tail -n +3 $SRC_PATH >> $DST_PATH
echo $END_DELIMITER >> $DST_PATH

echo "Run 'exec \$SHELL' to reload your shell."
