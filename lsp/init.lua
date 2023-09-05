-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local util = require 'lspconfig.util'

local lspconfig = require "lspconfig"

require "custom.lsp.ruby"
require "custom.lsp.crystal"
require "custom.lsp.markdown"

-- Crystal Setup
lspconfig.crystalline.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
-- or vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
return {}
