# Guy Delarea neovim Config
version 1.0
```
 _   _ _____ _____     _____ __  __
| \ | | ____/ _ \ \   / /_ _|  \/  |
|  \| |  _|| | | \ \ / / | || |\/| |
| |\  | |__| |_| |\ V /  | || |  | |
|_| \_|_____\___/  \_/  |___|_|  |_|
```

## To Do List

- [X] LSP
- [X] DAP
- [X] Linter
  - [X] Formmater
- [ ] Re-Vamped KeyBinds
- [X] Adding Startup Screen 
- [ ] Adding Tmux Support

## Known Issues:
To Fix Treesitter 
```
:TSInstall vim
```
Python Debugger
```
mkdir .virtualenvs
cd .virtualenvs
python -m venv debugpy
debugpy/bin/python -m pip install debugpy
```
## To Install 
Install Lua
```
sudo apt install lua3.5
```
Install Packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
then run:
```
PackerSync
```

## KeyBinds
- [ ] Add Keymaps
