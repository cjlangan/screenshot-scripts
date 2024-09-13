#!/bin/bash

if [ "$EUID" == 0 ]
  then echo "Do not run as root"
  exit
fi

#setup the config files
mkdir $HOME/.config/screenshot-utils
#create the file the scripts go into
mkdir $HOME/.scripts

echo "FALSE" > $HOME/.config/screenshot-utils/copy-path

mkdir $HOME/Photos/Screenshots
echo $HOME/Photos/Screenshots > $HOME/.config/screenshot-utils/copy-path

mv screenshot selective_screenshot window_screenshot $HOME/.scripts
