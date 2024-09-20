#!/bin/bash

#setup the config files
mkdir $HOME/.config/gnome-screenshot-utils
mkdir $HOME/Pictures/Screenshots
echo $HOME/Pictures/Screenshots > $HOME/.config/screenshot-utils/screenshot-path

cp gscreen /usr/local/bin/gscreen

echo "Installation finished."
