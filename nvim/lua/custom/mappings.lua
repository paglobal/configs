---@type MappingsTable
local M = {}

M.disabled = {
	i = {
		-- general
		["<C-h>"] = "",
		["<C-l>"] = "",
		["<C-j>"] = "",
		["<C-k>"] = "",
	},
	n = {
		-- blankline
		["<leader>cc"] = "",

		-- comment
		["<leader>/"] = "",

		-- general
		["<C-h>"] = "",
		["<C-l>"] = "",
		["<C-j>"] = "",
		["<C-k>"] = "",

		-- tabufline
		["<tab>"] = "",
		["<S-tab>"] = "",
		["<leader>x"] = "",

		-- lspconfig
		["K"] = "",
		["<leader>f"] = "",
		["<leader>q"] = "",

		-- nvim-tree
		["<C-n>"] = "",

		-- nvterm
		["<leader>h"] = "",
		["<leader>v"] = "",
		["<A-i>"] = "",
		["<A-h>"] = "",
		["<A-v>"] = "",

		-- telescope
		["<leader>pt"] = "",
		["<leader>th"] = "",
	},
	t = {
		-- general
		["<C-x>"] = "",

		-- nvterm
		["<A-i>"] = "",
		["<A-h>"] = "",
		["<A-v>"] = "",
	},
	v = {
		-- comment
		["<leader>/"] = "",
	},
}

M.general = {
	i = {
		["<A-j>"] = { "<esc> <cmd> m .+1 <CR>==gi", "Move line down" },
		["<A-k>"] = { "<esc> <cmd> m .-2 <CR>==gi", "Move line up" },
		["jk"] = { "<ESC>", "Enter command mode" },
	},
	n = {
		-- quite useful
		[";"] = { ":", "enter command mode", opts = { nowait = true } },

		-- switch between windows
		["<leader>h"] = { "<C-w>h", "Window left" },
		["<leader>l"] = { "<C-w>l", "Window right" },
		["<leader>j"] = { "<C-w>j", "Window down" },
		["<leader>k"] = { "<C-w>k", "Window up" },

		-- save
		["<leader>s"] = { "<cmd> w <CR>", "Save file" },

		-- from previous nvim config
		["<leader>qw"] = { "<cmd> q! <CR>", "Close window" },
		["<leader>qa"] = { "<cmd> q! <CR> <cmd> q! <CR> <cmd> q! <CR>", "Close app" },
		["<leader>vs"] = { "<cmd> vsplit <CR>", "Vertical Split" },
		["<leader>tb"] = { "<cmd> tabnew <CR>", "New tab (with new buffer)" },
		["<leader>qt"] = { "<cmd> tabclose <CR>", "Close tab" },
		["<leader>db"] = { "<cmd> cd .. <CR>", "Move back one directory" },
		["<leader>dd"] = { "<cmd> cd ~/Documents/ <CR>", "Move to Documents directory" },
		["<Tab>"] = { "<cmd> tabnext <CR>", "Goto next tab" },
		["<S-Tab>"] = { "<cmd> tabprevious <CR>", "Goto previous tab" },
		["J"] = { "<cmd> m .+1 <CR>==", "Move line down" },
		["K"] = { "<cmd> m .-2 <CR>==", "Move line up" },
	},
	s = {
		["jk"] = { "<ESC>", "Enter command mode" },
	},
	t = {
		["jk"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
	},
	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.comment = {
	n = {
		["<leader>cc"] = {
			function()
				require("Comment.api").toggle.linewise.current()
			end,
			"Toggle comment",
		},
	},
	v = {
		["<leader>cc"] = {
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
			"Toggle comment",
		},
	},
}

M.tabufline = {
	n = {
		-- cycle through buffers
		["]t"] = {
			function()
				require("nvchad.tabufline").tabuflineNext()
			end,
			"Goto next buffer",
		},
		["[t"] = {
			function()
				require("nvchad.tabufline").tabuflinePrev()
			end,
			"Goto prev buffer",
		},

		-- close buffer + hide terminal buffer
		["<leader>qb"] = {
			function()
				require("nvchad.tabufline").close_buffer()
			end,
			"Close buffer",
		},
	},
}

M.lspconfig = {
	n = {
		["<leader>gh"] = {
			function()
				vim.diagnostic.open_float({ border = "rounded" })
			end,
			"Floating diagnostic",
		},
		["gh"] = {
			function()
				vim.lsp.buf.hover()
			end,
			"LSP hover",
		},
		["<leader>ds"] = {
			function()
				vim.diagnostic.setloclist()
			end,
			"Diagnostic setloclist",
		},
	},
}

M.nvimtree = {
	n = {
		-- toggle
		["<leader>tn"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
	},
}

M.telescope = {
	n = {
		-- pick a hidden term
		["<leader>ft"] = { "<cmd> Telescope terms <CR>", "Pick hidden term" },

		-- theme switcher
		["<leader>ts"] = { "<cmd> Telescope themes <CR>", "Theme switcher" },

		-- find symbols
		["<leader>fs"] = {
			function()
				require("telescope.builtin").lsp_document_symbols()
			end,
			"Find document symbols",
		},
	},
}

M.nvterm = {
	n = {
		-- toggle in normal mode
		["<C-j>"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"Toggle horizontal term",
		},
		["<leader>th"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"Toggle horizontal term",
		},
		["<leader>tf"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"Toggle floating term",
		},
		["<leader>tv"] = {
			function()
				require("nvterm.terminal").toggle("vertical")
			end,
			"Toggle vertical term",
		},
	},
	t = {
		-- toggle in terminal mode
		["<C-j>"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"Toggle horizontal term",
		},
		["<leader>th"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"Toggle horizontal term",
		},
		["<leader>tf"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"Toggle floating term",
		},
		["<leader>tv"] = {
			function()
				require("nvterm.terminal").toggle("vertical")
			end,
			"Toggle vertical term",
		},
	},
}

M.blankline = {
	n = {
		["<leader>gc"] = {
			function()
				local ok, start = require("indent_blankline.utils").get_current_context(
					vim.g.indent_blankline_context_patterns,
					vim.g.indent_blankline_use_treesitter_scope
				)

				if ok then
					vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
					vim.cmd([[normal! _]])
				end
			end,

			"Jump to current context",
		},
	},
}

M.gitsigns = {
	n = {
		["<leader>gl"] = {
			function()
				package.loaded.gitsigns.toggle_current_line_blame()
			end,
			"Toggle current line blame",
		},
	},
}

return M
