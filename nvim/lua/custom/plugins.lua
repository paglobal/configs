local overrides = require("custom.configs.overrides")

local plugins = {
	-- Override plugin definition options
	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},
	{
		"neovim/nvim-lspconfig",
		-- format & linting
		dependencies = {
			"nvimtools/none-ls.nvim",
			event = "VeryLazy",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},
	{
		-- format & linting
		-- Make sure this is always at par with the ALE config in `ale.lua`.
		"dense-analysis/ale",
		ft = {
			"astro",
			"css",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"markdown",
			"typescript",
			"typescriptreact",
		},
		config = function()
			require("custom.configs.ale")
		end,
	},
	{
		"tpope/vim-fugitive",
		lazy = false,
	},
	{
		"mg979/vim-visual-multi",
		lazy = false,
	},
	{
		"folke/zen-mode.nvim",
		lazy = false,
	},
	{
		"folke/twilight.nvim",
	},
}

return plugins
