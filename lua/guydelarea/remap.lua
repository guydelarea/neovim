-- Locals
local map = vim.api.nvim_set_keymap

-- Main KeyMaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keybinds
map('n', '<C-d>', ':NERDTreeToggle<CR>', { silent = true})
map('n', '<C-e>', ':FZF<CR>', { silent = true})
map('n', '<C-g>', ':LazyGit<CR>', { silent = true})
