---@type MappingsTable
local M = {}

M.disabled = {
  n = {
    -- used by vim tmux navigator
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  }
}

M.bufferline = {
  n = {
    ["<leader>gb"] = { "<Cmd>TbufPick<CR>", "Choose buffer" },
    ["<leader>g1"] = { ":lua vim.cmd(\"b\" .. vim.t.bufs[1])<CR>", "Choose buffer 1" },
  }
}

M.lsp = {
  n = {
    ["<leader>gd"] = { ":lua vim.lsp.buf.definition() <CR>", "Go to definition" },
  }
}

M.tmux_navigator = {
  n = {
    ["<C-h>"] = { "<Cmd>TmuxNavigateLeft<CR>", "TmuxNavigateLeft" },
    ["<C-k>"] = { "<Cmd>TmuxNavigateUp<CR>", "TmuxNavigateUp" },
    ["<C-j>"] = { "<Cmd>TmuxNavigateDown<CR>", "TmuxNavigateDown" },
    ["<C-l>"] = { "<Cmd>TmuxNavigateRight<CR>", "TmuxNavigateLeft" },
  }
}

M.edit = {
  -- map("n", "<C-j>", ":m .+1<CR>==", opt)
  -- map("n", "<C-k>", ":m .-2<CR>==", opt)
  i = {
    -- ["<C-j>"] = { "<Esc>:m .+1<CR>==gi", "Move Live Up" },
    -- ["<C-k>"] = { "<Esc>:m .-2<CR>==gi", "Move Line Down" },
    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  },

  v = {
    ["<C-j>"] = { ":m '>+1<CR>gv=gv", "Move Live Up" },
    ["<C-k>"] = { ":m '<-2<CR>gv=gv", "Move Line Down" },
  }
}

M.tabs = {
  n = {
    ["<leader>]"] = { ":tabnext<CR>", "Tab: Next" },
    ["<leader>["] = { ":tabprevious<CR>", "Tab: Previous" },
    ["<leader>tn"] = { ":tabnew<CR>", "Tab: New" },
    ["<leader>tx"] = { ":tabclose<CR>", "Tab: Close" },
    ["<leader>t1"] = { ":tabn 1<CR>", "Tab: Go To 1" },
    ["<leader>t2"] = { ":tabn 2<CR>", "Tab: Go To 2" },
    ["<leader>t3"] = { ":tabn 3<CR>", "Tab: Go To 3" },
    ["<leader>t4"] = { ":tabn 4<CR>", "Tab: Go To 4" },
    ["<leader>t5"] = { ":tabn 5<CR>", "Tab: Go To 5" },
    ["<leader>t6"] = { ":tabn 6<CR>", "Tab: Go To 6" },
  }
}

-- M.obsidian = {
--   n = {
--     ["gf"] =  {
--       function()
--
--         if require('obsidian').util.cursor_on_markdown_link() then
--           return "<cmd>ObsidianFollowLink<CR>"
--         else
--           return "gf"
--         end
--       end,
--       "Obsidian go to file",
--       opts = { noremap = false, expr = true}
--     }
--   }
-- }

return M


