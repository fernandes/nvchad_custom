-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local util = require 'lspconfig.util'

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

require'lspconfig'.syntax_tree.setup{}
require'lspconfig'.sorbet.setup{}

lspconfig.solargraph.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    useBundler = true
  },
  init_options = { formatting = true },
  flags = {
    debounce_text_changes = 150
  }
}

-- lspconfig.scry.setup { }
lspconfig.crystalline.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}

return {}
