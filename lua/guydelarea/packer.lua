-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "ellisonleao/gruvbox.nvim" }
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdateSync'})
  use('junegunn/fzf')
  use('nvim-treesitter/playground')
  use('preservim/nerdtree')
  use('ryanoasis/vim-devicons')
  use('lukas-reineke/indent-blankline.nvim')
  use('kdheepak/lazygit.nvim')
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use({
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      tag = "v1.2.1",
      -- install jsregexp (optional!:).
      run = "make install_jsregexp"
  })
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          -- Snippets
          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
  }
-- LSP
use {
  "someone-stole-my-name/yaml-companion.nvim",
  requires = {
    { "neovim/nvim-lspconfig" },
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
},
config = function()
    require("telescope").load_extension("yaml_schema")
    local cfg = require("yaml-companion").setup({
        schemas = {
            result = {
                {
                    name = "Kubernetes 1.22.5",
                    uri = "https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.5-standalone-strict/all.json",
                },
            },
        },
    })
    require("lspconfig")["yamlls"].setup(cfg)
end,
}
end)
