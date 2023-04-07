local overrides = require("custom.configs.overrides")

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  {
    "vim-crystal/vim-crystal",
    {},
  },
  -- ["mg979/vim-visual-multi"] = {},
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    config = function()
      require "custom.configs.tmux-navigator"
    end,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        plugins = {
          tmux = { enabled = true },
          kitty = {
            enabled = true,
            font = "+8", -- font size increment
          }
        }
      }
    end
  },
  {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  {
    "nvim-treesitter/playground",
    config = function()
      require "nvim-treesitter.configs".setup {
        playground = {
          enable = true,
        }
      }
    end
  },
  {
    "vim-ruby/vim-ruby",
    {},
  },
  {
    "tpope/vim-rails",
    {},
  },
  {
    "tpope/vim-bundler",
    {},
  },
  {
    "dinhhuy258/git.nvim",
    lazy = false,
    config = function()
      require "custom.configs.git"
    end,
  },
  {
    "jez/vim-sorbet",
    {},
  },
}

