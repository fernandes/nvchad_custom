-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.cmd("au BufNewFile,BufRead *.cr			setf crystal")
vim.cmd("au BufNewFile,BufRead *.rake			setf ruby")

-- vim.cmd("source yank.vim")
