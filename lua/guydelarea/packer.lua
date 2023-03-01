-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "ellisonleao/gruvbox.nvim" })
	use("nvim-tree/nvim-web-devicons")
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdateSync" })
	use("junegunn/fzf")
	use("nvim-treesitter/playground")
	use("MunifTanjim/nui.nvim")
	use("f-person/git-blame.nvim")
	use("preservim/nerdtree")
    use {
        "loctvl842/monokai-pro.nvim",
        config = function()
            require("monokai-pro").setup()
        end
    }
	use({
		"startup-nvim/startup.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("startup").setup()
		end,
	})
	use("ryanoasis/vim-devicons")
	use({
		"williamboman/mason.nvim",
		"jose-elias-alvarez/null-ls.nvim",
		"jay-babu/mason-null-ls.nvim",
	})
	use("lukas-reineke/indent-blankline.nvim")
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use("kdheepak/lazygit.nvim")
	use("rafamadriz/friendly-snippets")
	use("lewis6991/satellite.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	-- Adding Debugger
	use("mfussenegger/nvim-dap")
	use("mfussenegger/nvim-dap-python")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use({
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig",
	})
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup()
		end,
	})
end)
