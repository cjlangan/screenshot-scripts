screenshot-utils is a set of screenshot scripts that are meant to be used as keybinds to take screenshots

### Requirements
* Be using wayland
* wl-clipboard
* Bash
* grim
* slurp

### Installation
1. clone this repo and navigate inside the folder.
2. run `./init.sh'
3. To permintantly add the scripts location to your path run 
   `echo \"export PATH=\\\$HOME/.scripts/screenshot-utils:\\\$PATH\" >> \$HOME/.bashrc`
   Otherwise, run 
   `export PATH=\$HOME/.scripts/screenshot-utils:\$PATH`
4. profit

### Usage
screenshot-utils has three scripts: `screenshot`, `selective_screenshot` and `window_screenshot`.

`screenshot` takes a snapshot of your whole screen
`selective_screenshot` lets you select an area of your screen to take a snapshot of
`window_screenshot` takes a snapshot of the currently focused window. This feature is only useful if you bind it to a hotkey.

### Configuration
screenshot-utils uses two configuration files both located at `$HOME/.config/screenshot-utils`. 

The first file is `copy-path` and by default contains `FALSE`. If set to `TRUE` it will load the path of the file into the clipboard before it takes the screenshot.

The second file is `screenshot-path` it determines the path where the screenshots are saved. The default is `$HOME/Pictures/Screenshots`. 
