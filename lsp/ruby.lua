local util = require 'lspconfig.util'

local my_on_attach = function(client, bufnr)

  if client.name == "solargraph" then
    client.server_capabilities.documentFormattingProvider = false -- 0.8 and later
  end
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings.
  local opts = {
    noremap = true,
    silent = true,
  }
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gh', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>rm', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>rr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '<space>i', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

  -- Set some keybinds conditional on server capabilities
  buf_set_keymap("n", "<space>=", "<cmd>lua vim.lsp.buf.format({async = false})<CR>", opts)
end

-- Ruby Setup
require'lspconfig'.sorbet.setup {
  root_dir = util.root_pattern('sorbet'),
  on_attach = my_on_attach,
}

require'lspconfig'.standardrb.setup {
  init_options = {
    formatter = 'auto',
  },
  root_dir = util.root_pattern('Gemfile', '.git'),
}

require'lspconfig'.solargraph.setup {
  on_attach = my_on_attach,
  cmd = {
    -- "bundle",
    -- "exec",
    "solargraph",
    "stdio",
  },
  settings = {
    solargraph = {
      diagnostics = false,
      -- we do not format as we handle formatting other way
      formatting = false,
    },
  },
}

-- We have a lot of possible lsps to format ruby, but we are going to 
-- use only standardrb
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.rb",
  callback = function()
    vim.lsp.buf.format({
      async = false,
      filter = function(client) return client.name == "standardrb" end,
    })
  end,
})

return {}
