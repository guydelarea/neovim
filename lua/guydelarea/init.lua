-- To Fix Treesitter 
-- :TSInstall vim

-- Requires
require("guydelarea.remap")
require("guydelarea.packer")
-- Neovim Global Settings 
vim.wo.number = true
vim.wo.relativenumber = true
-- Indent
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
require("indent_blankline").setup {
    show_end_of_line = true,
    show_char_bkacjkube = " ",
    show_current_context = true,
    show_current_context_start = true,
}
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
-- Done!
print("GuyDelarea NeoVim 1.0")
