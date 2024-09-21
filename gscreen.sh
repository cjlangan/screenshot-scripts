#!/bin/bash

# Function to show help
function show_help
{
    echo "Usage: gscreen [-e] [-w] [-b]"
    echo "  -e      take screenshot of entire screen"
    echo "  -w      take screenshot of current window"
    echo "  -b      copy file path to clipboard before the screenshot"
    echo "with no flags, it will be a selective screenshot and the"
    echo "file path will be copied to your clipboard after"
}

entire=false
window=false
before=false

while getopts "ewb" opt; do
    case ${opt} in
        e )
            entire=true
            ;;
        w )
            window=true
            ;;
        b )
            before=true
            ;;
        \? )
            show_help
            exit 1
            ;;
    esac
done

filename=$(date +'%Y-%m-%d-%H.%M.%S').png
filepath="$HOME/Pictures/Screenshots"

if [ "$before" == "true" ]; then
    echo $filepath/$filename | wl-copy
fi

# Take screenshot and copy to clipboard
if [ "$entire" == "true" ]; then # take regular screenshot
    gnome-screenshot -f "$filepath/$filename" | wl-copy
elif ["$window" == "true"]; then # take screenshot of window
    gnome-screenshot -w -f "$filepath/$filename" | wl-copy
else # take selective screenshot
    gnome-screenshot -a -f "$filepath/$filename" | wl-copy
fi

if [ "$before" == "false" ]; then
    echo $filepath/$filename | wl-copy
fi

