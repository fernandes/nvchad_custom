-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'
local M = {}

M.options = {
  nvchad_branch = "v2.0",
  lsp_semantic_tokens = true,
  extended_integrations = {
    "dap",
  },
  nvdash = {
    load_on_startup = true,
  },
}

M.ui = {
  hl_override = require "custom.highlights.override",
  hl_add = require "custom.highlights.add",
  theme = "fernandes",
}

M.mappings = require "custom.mappings"

-- NvChad included plugin options & overrides
M.plugins = "custom.plugins"

-- M.plugins = {
--   user = require "custom.plugins",
--   status = {
--     cheatsheet = true,
--     colorizer = true
--   },
--   override = {
--     ["kyazdani42/nvim-tree.lua"] = {
--       renderer = {
--         icons = {
--           show = {
--             folder = false,
--           }
--         }
--       }
--     }
--   }
-- }
--

return M
