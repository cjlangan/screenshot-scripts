#!/bin/bash
#basically all the screen shot code is copied from here:
#  -> https://sr.ht/~emersion/grim/
filename=$(date +'%Y-%m-%d-%H.%M.%S').png
filepath=$(cat $HOME/.config/screenshot-utils/screenshot-path)
copypath=$(cat $HOME/.config/screenshot-utils/copy-path)

if [ $copypath == "TRUE" ]
then
    echo $filepath/$filename | wl-copy
fi

gnome-screenshot -a -f "$filepath/$filename"

if [ $copypath == "AFTER" ]
then
    echo $filepath/$filename | wl-copy
fi

