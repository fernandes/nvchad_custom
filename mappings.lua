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

M.obsidian = {
  n = {
    ["gf"] =  {
      function()

        if require('obsidian').util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end,
      "Obsidian go to file",
      opts = { noremap = false, expr = true}
    }
  }
}

return M


