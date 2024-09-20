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
echo $HOME/Pictures/Screenshots > $HOME/.config/screenshot-utils/screenshot-path

cp screenshot selective_screenshot window_screenshot $HOME/.scripts/screenshot-utils/

exists_in_path=$(cat $HOME/.bashrc | grep -c "export PATH=\$HOME/.scripts/screenshot-utils:\$PATH")
if [ $exists_in_path == 0 ]
then
    echo "export PATH=\$HOME/.scripts/screenshot-utils:\$PATH" >> $HOME/.bashrc
fi

echo "Installation finished."
echo "You can now remove this folder."

rm init.sh
