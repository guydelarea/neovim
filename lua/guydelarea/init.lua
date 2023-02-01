--
-- Guy Delarea Neovim Plugin
--      To Do:
--          Add Snippets
--          Add Formmater
--          Fix Lazygit
--          Add Tab KeyMaps

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
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "/home/guy/.config/nvim/snippets/" } })
-- Done!
print("GuyDelarea NeoVim 1.0")
