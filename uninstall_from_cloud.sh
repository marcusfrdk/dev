#!/bin/bash

TMP_PATH=/tmp/dev_from_cloud
git clone -q https://github.com/marcusfrdk/dev.git $TMP_PATH
cd $TMP_PATH
./uninstall.sh
rm -rf $TMP_PATH
echo "Run 'exec \$SHELL' to reload your shell."
