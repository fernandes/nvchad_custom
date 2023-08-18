local present, null_ls = pcall(require, "null-ls")

if not present then return end

local b = null_ls.builtins
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd.with {
    filetypes = {
      "html",
      "markdown",
      "css",
    },
  }, -- so prettier works only on these filetypes

  -- Lua
  -- b.formatting.stylua,
  b.formatting.lua_format,
  b.formatting.erb_lint,

  b.diagnostics.reek,
}

null_ls.setup {
  debug = true,
  sources = sources,
  -- you can reuse a shared lspconfig on_attach callback here
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
          -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
          vim.lsp.buf.format({
            async = false,
            timeout_ms = 2000,
          })
        end,
      })
    end
  end,
}

return {}
