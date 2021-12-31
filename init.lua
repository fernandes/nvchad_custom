-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:

-- hooks.add("setup_mappings", function(map)
--    map("n", "<leader>cc", "gg0vG$d", opt) -- example to delete the buffer
--    .... many more mappings ....
-- end)

-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

-- hooks.add("install_plugins", function(use)
--    use {
--       "max397574/better-escape.nvim",
--       event = "InsertEnter",
--    }
-- end)

hooks.add("install_plugins", function(use)
  -- use {
  --    "davidcelis/vim-ariake-dark"
  --  }
  --
  --  use {
  --    "vim-crystal/vim-crystal"
  --  }
  --
  --  use {
  --    "christoomey/vim-tmux-navigator"
  --  }
  --
  --  use {
  --    "vim-ruby/vim-ruby"
  --  }
  --
  --  use {
  --    "sudormrfbin/cheatsheet.nvim",
  --
  --    requires = {
  --      {'nvim-telescope/telescope.nvim'},
  --      {'nvim-lua/popup.nvim'},
  --      {'nvim-lua/plenary.nvim'},
  --    }
  --  }
  --

  use {
    "ap/vim-css-color"
  }
end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"
hooks.add("setup_mappings", function(map)
  map("n", "<leader>gb", "<Cmd>BufferLinePick<CR>", opt)
  map("n", "<leader>g1", "<Cmd>BufferLineGoToBuffer 1<CR>", opt)
  map("n", "<leader>g2", "<Cmd>BufferLineGoToBuffer 2<CR>", opt)
  map("n", "<leader>g3", "<Cmd>BufferLineGoToBuffer 3<CR>", opt)
  map("n", "<leader>g4", "<Cmd>BufferLineGoToBuffer 4<CR>", opt)
  map("n", "<leader>g5", "<Cmd>BufferLineGoToBuffer 5<CR>", opt)
  map("n", "<leader>g6", "<Cmd>BufferLineGoToBuffer 6<CR>", opt)
  
  map("n", "<C-j>", ":m .+1<CR>==", opt)
  map("n", "<C-k>", ":m .-2<CR>==", opt)
  map("i", "<C-j>", "<Esc>:m .+1<CR>==gi", opt)
  map("i", "<C-k>", "<Esc>:m .-2<CR>==gi", opt)
  map("v", "<C-j>", ":m '>+1<CR>gv=gv", opt)
  map("v", "<C-k>", ":m '<-2<CR>gv=gv", opt)
end)

require "custom.config"

