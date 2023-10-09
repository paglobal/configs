local null_ls = require("null-ls")
local b = null_ls.builtins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
	sources = {
		-- go
		b.formatting.gofmt,
		b.formatting.goimports,
		-- make sure to install and enable these if needed
		-- b.formatting.goimports_reviser,
		-- b.formatting.golines,
		-- b.formatting.gofumpt,

		-- lua
		b.formatting.stylua,

		-- web dev
		-- disabled because of eslint-lsp
		-- b.diagnostics.eslint,
		-- b.formatting.prettier,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
}

null_ls.setup({
	sources = opts.sources,
	on_attach = opts.on_attach,
})
