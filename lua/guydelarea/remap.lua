-- Locals
local map = vim.api.nvim_set_keymap

-- Main KeyMaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keybinds
map("n", "<C-d>", ":NERDTreeToggle<CR>", { silent = true })
map("n", "<C-e>", ":FZF<CR>", { silent = true })
map("n", "<C-g>", ":LazyGit<CR>", { silent = true })
map("n", "<C-f>", ":lua vim.lsp.buf.format()<CR>", { silent = true })
map("n", "<C-i>", ":lua vim.diagnostic.open_float()<CR>", { silent = true })
map("n", "<C-s>", ":SessionManager save_current_session<CR>", { silent = true })
map("n", "<C-l>", ":SessionManager load_current_dir_session<CR>", { silent = true })

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
vim.opt.foldignore = ""
vim.opt.splitright = true
-- Telescope
vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>of", "<cmd>Telescope oldfiles<CR>", { noremap = true })
-- Tabs
vim.api.nvim_set_keymap("n", "<C-t>", "<cmd>tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-q>", "<cmd>BufferClose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gt", "<cmd>BufferNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gr", "<cmd>BufferPrevious<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gt", "<cmd>BufferMoveNext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>BufferMovePrevious<CR>", { noremap = true })
-- Debugger
vim.keymap.set('n', '<F3>', function() require("dapui").toggle() end)
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F9>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    require('dap.ui.widgets').preview()
end)
vim.keymap.set('n', '<Leader>df', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
    local widgets = require('dap.ui.widgets')
    widgets.centered_float(widgets.scopes)
end)


-- Snippets
vim.cmd([[
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
set ignorecase
set smartcase
lua vim.diagnostic.config({ virtual_text = false, })
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
