return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function() require "custom.configs.null-ls" end,
      },

    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.lsp"
    end, -- Override to setup mason-lspconfig
  },
  {
    'mhartington/formatter.nvim',
    opts = {
      -- Enable or disable logging
      logging = true,
      -- Set the log level
      log_level = vim.log.levels.DEBUG,
      -- All formatter configurations are opt-in
      filetype = {
        -- ["*"] = {
        --   -- "formatter.filetypes.any" defines default configurations for any
        --   -- filetype
        --   require("formatter.filetypes.any").remove_trailing_whitespace,
        -- },
      },
    },
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",
        "luaformatter",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",
        "prettierd",
        "tailwindcss-language-server",
        "htmlbeautifier",
        "stylelint-lsp",

        -- language server in go, super fast
        "efm",

        -- ruby stuff
        "solargraph",
        "sorbet",
        "standardrb",

        -- crystal
        "crystalline",

        -- bash
        "bash-language-server",
        "bash-debug-adapter",

        -- tree-sitter
        -- cli is used to compile embedded template
        "tree-sitter-cli"
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        "ruby",
        -- "embedded-template",
        "bash",
        "cmake",
        "diff",
        "dockerfile",
        -- "gitconfig",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "json",
        "json5",
        "make",
        "mermaid",
        "scss",
        "sql",
        "yaml",
      },
      indent = {
        enable = true,
        disable = {
          "ruby",
        },
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
    init = function()
      -- let's add tree sitter embedded template
      local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
      parser_config.embedded_template = {
        install_info = {
          url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
          files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
          -- optional entries:
          branch = "main", -- default branch in case of git repo if different from master
          generate_requires_npm = false, -- if stand-alone parser without npm dependencies
          requires_generate_from_grammar  = true,
        },
        filetype = "eruby", -- if filetype does not match the parser name
      }
    end
    -- init  = function()
    --   vim.cmd("set foldmethod=expr")
    --   vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")
    --   vim.cmd("set nofoldenable")
    -- end
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
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
    },

  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function() require("better_escape").setup() end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  {
    "vim-crystal/vim-crystal",
    event = "BufEnter *.cr",
  },
  -- ["mg979/vim-visual-multi"] = {},
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        plugins = {
          tmux = {
            enabled = true,
          },
          kitty = {
            enabled = true,
            font = "+8", -- font size increment
          },
        },
      }
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = true,
  },
  {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    "nvim-treesitter/playground",
    config = function()
      require("nvim-treesitter.configs").setup {
        playground = {
          enable = true,
        },
      }
    end,
  },
  {
    "vim-ruby/vim-ruby",
    event = "BufEnter *.rb,config.ru,Gemfile",
  },
  {
    "tpope/vim-rails",
    event = "BufEnter *.rb,config.ru,Gemfile",
  },
  {
    "tpope/vim-bundler",
    lazy = false,
  },
  {
    "dinhhuy258/git.nvim",
    lazy = false,
    opts = {
      default_mappings = true, -- NOTE: `quit_blame` and `blame_commit` are still merged to the keymaps even if `default_mappings = false`

      keymaps = {
        -- Open blame window
        blame = "<Leader>gb",
        -- Close blame window
        quit_blame = "q",
        -- Open blame commit
        blame_commit = "<CR>",
        -- Open file/folder in git repository
        browse = "<Leader>go",
        -- Open pull request of the current branch
        open_pull_request = "<Leader>gp",
        -- Create a pull request with the target branch is set in the `target_branch` option
        create_pull_request = "<Leader>gn",
        -- Opens a new diff that compares against the current index
        diff = "<Leader>gd",
        -- Close git diff
        diff_close = "<Leader>gD",
        -- Revert to the specific commit
        revert = "<Leader>gr",
        -- Revert the current file to the specific commit
        revert_file = "<Leader>gR",
      },
      -- Default target branch when create a pull request
      target_branch = "master",
    },
  },
  {
    "jez/vim-sorbet",
    event = "BufEnter *.rb",
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function()
      vim.g.mkdp_filetypes = {
        "markdown",
      }
    end,
    ft = {
      "markdown",
    },
  },
}
