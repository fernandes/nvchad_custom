local highlights = require('custom.highlights.highlights')
local terminal = require('custom.highlights.terminal')

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
vim.o.background = "dark"
vim.o.termguicolors = true
highlights.setup()
terminal.setup()

