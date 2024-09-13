#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#setup the config files
mkdir $HOME/.config/screenshot-utils

echo "FALSE" > $HOME/.config/screenshot-utils/copy-path

mkdir $HOME/Photos/Screenshots
echo $HOME/Photos/Screenshots > $HOME/.config/screenshot-utils/copy-path

scripts=screenshot selective_screenshot window_screenshot

chmod 711 scripts
mv scripts /usr/local/bin

