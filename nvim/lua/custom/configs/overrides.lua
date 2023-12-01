local M = {}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},
	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

M.mason = {
	ensure_installed = {
		-- lua
		"lua-language-server",
		"stylua",

		-- web dev
		"astro-language-server",
		"css-lsp",
		-- make sure to install and enable deno if needed (it's apparently much faster than prettier)
		-- "deno",
		"emmet-language-server",
		"eslint-lsp",
		"html-lsp",
		"marksman",
		"prettier",
		"tailwindcss-language-server",
		"typescript-language-server",

		-- go
		"delve",
		"gofumpt",
		"goimports",
		"goimports-reviser",
		"golines",
		"gopls",
	},
}

M.treesitter = {
	ensure_installed = {
		-- lua
		"lua",

		-- web dev
		"astro",
		"css",
		"html",
		"javascript",
		"typescript",
		"tsx",

		-- go
		"go",

		-- c
		"c",

		-- misc
		"markdown",
		"markdown_inline",
		"vim",
	},
	indent = {
		enable = true,
		disable = {
			"python",
		},
	},
}

return M
