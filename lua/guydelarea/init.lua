-- Guy Delarea Neovim Plugin
-- Requires
require("guydelarea.remap")
require("guydelarea.packer")
require("guydelarea.yaml")
require("guydelarea.filetypes")
require("startup").setup({theme = "guydelarea"}) -- put theme name here
-- Neovim Global Settings 
vim.wo.number = true
vim.wo.relativenumber = true
-- Indent Plugin Settings
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
require("indent_blankline").setup {
    show_end_of_line = true,
    show_char_bkacjkube = " ",
    show_current_context = true,
    show_current_context_start = true,
}
-- Snippets
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "/home/guy/.config/nvim/snippets/" } })
-- Jenkinsfile as groovy
vim.cmd([[
augroup filetypedetect
    autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
augroup END
]])
-- Python Debugger
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require("dapui").setup()
-- Minimap
require('satellite').setup()
-- Lualine
require('lualine').setup()
-- gruvbox
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- Done!
print("GuyDelarea Neovim Config 1.0")
