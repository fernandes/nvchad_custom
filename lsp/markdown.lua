-- require'lspconfig'.marksman.setup {}
--
vim.g.ruby_host_prog = '/Users/fernandes/.rbenv/shims/ruby' -- Caminho para seu Ruby

-- Configuração do LSP
local lsp = require('vim.lsp')
local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

-- if not configs.markdown then
--   configs.markdown = {
--     default_config = {
--       cmd = {
--         'ruby',
--         '/Users/fernandes/src/fernandes/lsp/markdown.rb',
--       },
--       filetypes = {
--         'markdown',
--       },
--       root_dir = function(fname)
--         -- return lspconfig.util.find_git_ancestor(fname) or vim.fn.getcwd()
--         return vim.fn.getcwd()
--       end,
--       settings = {},
--       -- Especificar capacidades explicitamente
--       capabilities = require('cmp_nvim_lsp').default_capabilities(),
--     },
--     commands = {},
--   }
-- end
--
-- lspconfig.markdown.setup {}
--
return {}
