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
-- Tabs
vim.api.nvim_set_keymap("n", "<C-b>", "<cmd>tabnew<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<C-q>", "<cmd>tabclose<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gt", "<cmd>tabnext<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "gr", "<cmd>tabprev<CR>", {noremap=true})
-- Snippets
vim.cmd([[
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
]])
