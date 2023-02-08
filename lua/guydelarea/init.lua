--
-- Guy Delarea Neovim Plugin
--      To Do:
--      More Keymaps

-- To Fix Treesitter 
-- :TSInstall vim

-- Requires
require("guydelarea.remap")
require("guydelarea.packer")
require("guydelarea.yaml")
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
-- mkdir .virtualenvs
-- cd .virtualenvs
-- python -m venv debugpy
-- debugpy/bin/python -m pip install debugpy
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require("dapui").setup()
-- Done!
print("GuyDelarea Neovim Config 1.0")
