return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["vim-crystal/vim-crystal"] = {},
  -- ["mg979/vim-visual-multi"] = {},
  ["christoomey/vim-tmux-navigator"] = {},
  ["folke/zen-mode.nvim"] = {
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
  ["folke/twilight.nvim"] = {
    config = function()
      require("twilight").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  ["nvim-treesitter/playground"] = {
    config = function()
      require "nvim-treesitter.configs".setup {
        playground = {
          enable = true,
        }
      }
    end
  }
}

