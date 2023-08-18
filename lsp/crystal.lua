local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

-- Crystal Setup
lspconfig.crystalline.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

return {}
