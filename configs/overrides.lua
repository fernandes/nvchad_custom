local M = {}

M.treesitter = {
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
    "yaml"
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "tailwindcss-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- ruby stuff
    "ruby-lsp",
    "solargraph",
    "sorbet",
    "standardrb",

    -- crystal
    "crystalline",

    -- bash
    "bash-language-server",
    "bash-debug-adapter"
  },
}

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

return M
