-- Locals
local map = vim.api.nvim_set_keymap

-- Main KeyMaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keybinds
map('n', '<C-d>', ':NERDTreeToggle<CR>', { silent = true})
map('n', '<C-e>', ':FZF<CR>', { silent = true})
map('n', '<C-g>', ':LazyGit<CR>', { silent = true})

-- Sets
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.opt.foldlevel = 20
vim.opt.foldmethod = "indent"
vim.opt.foldignore =""
vim.opt.splitright=true
-- Snippets
vim.cmd([[
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
]])
