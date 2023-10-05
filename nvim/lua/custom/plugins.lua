local overrides = require "custom.configs.overrides"

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
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
}

return plugins
