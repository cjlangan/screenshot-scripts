#!/bin/bash

if [ "$EUID" == 0 ]
  then echo "Do not run as root"
  exit
fi

#setup the config files
mkdir $HOME/.config/screenshot-utils
#create the file the scripts go into
mkdir $HOME/.scripts
mkdir $HOME/.scripts/screenshot-utils

#setup config files
echo "FALSE" > $HOME/.config/screenshot-utils/copy-path
mkdir $HOME/Pictures/Screenshots
echo $HOME/Pictures/Screenshots > $HOME/.config/screenshot-utils/copy-path

mv screenshot selective_screenshot window_screenshot $HOME/.scripts/screenshot-utils/

echo "Installation finished."
echo "To add the scripts to your path run"
echo "export PATH=$HOME/.scripts/screenshot-utils:$PATH"
