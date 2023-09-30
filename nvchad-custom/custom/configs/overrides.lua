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
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "eslint-lsp",
    "prettier",
    "emmet-language-server",
    "tailwindcss-language-server",
    -- make sure to install and enable deno if needed (it's apparently much faster than prettier)
    -- "deno",

    -- go
    "gopls",
  },
}

M.treesitter = {
  ensure_installed = {
    -- lua
    "lua",

    -- web dev
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",

    -- go
    "go",

    -- c
    "c",

    -- misc
    "vim",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

return M
