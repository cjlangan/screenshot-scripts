#!/bin/bash

# Function to show help
function show_help
{
    echo "Usage: gscreen [-w]"
    echo "  -w      take screenshot of entire screen"
    echo "  -b      copy file path to clipboard before the screenshot"
    echo "with no flags, it will be a selective screenshot and the"
    echo "file path will be copied to your clipboard after"
}

whole=" -a"
before=false

while getopts "wb" opt; do
    case ${opt} in
        w )
            whole=""
            ;;
        b )
            before=true
            ;;
        \? )
            echo "Invalid option: -$OPTARG" >&2
            show_help
            exit 1
            ;;
    esac
done

filename=$(date +'%Y-%m-%d-%H.%M.%S').png
filepath="~/Pictures/Screenshots"

if [ before == true ]; then
    echo $filepath/$filename | wl-copy
fi

# Take screenshot and copy to clipboard
if [ whole == true ]; then
    gnome-screenshot -f "$filepath/$filename" | wl-copy
else
    gnome-screenshot -a -f "$filepath/$filename" | wl-copy
fi

if [ before == false ]; then
    echo $filepath/$filename | wl-copy
fi

