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
3. run 'export PATH=\$HOME/.scripts/screenshot-utils:\$PATH'
4. profit

### Explination
screenshot-utils has three scripts: `screenshot`, `selective_screenshot` and `window_screenshot`.

`screenshot` takes a snapshot of your whole screen
`selective_screenshot` lets you select an area of your screen to take a snapshot of
`window_screenshot` takes a snapshot of the currently focused window. This feature is only useful if you bind it to a hotkey.
