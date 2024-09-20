#!/bin/bash

#setup the config files
mkdir $HOME/.config/screenshot-utils
echo "AFTER" > $HOME/.config/screenshot-utils/copy-path
mkdir $HOME/Pictures/Screenshots
echo $HOME/Pictures/Screenshots > $HOME/.config/screenshot-utils/screenshot-path

cp gscreen /usr/local/bin/gscreen

echo "Installation finished."
