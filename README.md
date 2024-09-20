# gnome-screenshot-utils 
- a screenshot script to also copy the screenshot path to your clipboard

### Requirements
* Be using wayland
* GNOME
* wl-clipboard
* Bash
* grim
* slurp

### Installation
1. clone this repo and navigate inside the folder.
2. run `./init.sh`
3. profit

### Configuration
screenshot-utils uses two configuration files both located at `$HOME/.config/screenshot-utils`. 

The first file is `copy-path` and by default contains `AFTER`. If set to `TRUE` it will load the path of the file into the clipboard before it takes the screenshot. If set to `AFTER` it will save the path to the clipboard after the screenshot. 

The second file is `screenshot-path` it determines the path where the screenshots are saved. The default is `$HOME/Pictures/Screenshots`. 
