return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["vim-crystal/vim-crystal"] = {},
  -- ["mg979/vim-visual-multi"] = {},
  ["christoomey/vim-tmux-navigator"] = {
    config = function()
      require "custom.plugins.tmux-navigator"
    end,
  },
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
  },
  ["tpope/vim-rails"] = {},
  ["dinhhuy258/git.nvim"] = {
    config = function()
      require "custom.plugins.git"
    end,
  },
  ["jez/vim-sorbet"] = {},
  ["epwalsh/obsidian.nvim"] = {
    config = function()
      require("obsidian").setup({
        dir = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Second Brain",
        notes_subdir = "ram",
        daily_notes = {
          folder = "timeline",
        }
      })
    end,
  },
}

