-- local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.cmd("au BufNewFile,BufRead *.cr			setf crystal")
vim.cmd("au BufNewFile,BufRead *.rake			setf ruby")

vim.g["tmux_navigator_no_mappings"] = 1

-- vim.cmd("source yank.vim")

-- treesitter folding
-- https://github.com/nvim-treesitter/nvim-treesitter#folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd [[set nofoldenable]]
