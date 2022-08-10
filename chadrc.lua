-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the structure of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

-- M.options = {
--    relativenumber = true,
-- }

M.mappings = require "custom.mappings"

M.ui = {
  hl_override = require "custom.highlights.override",
  hl_add = require "custom.highlights.add",
  theme = "fernandes"
}

-- NvChad included plugin options & overrides
M.plugins = {
  user = require "custom.plugins",
  status = {
    cheatsheet = true,
    colorizer = true
  },
  override = {
    ["kyazdani42/nvim-tree.lua"] = {
      renderer = {
        icons = {
          show = {
            folder = false,
          }
        }
      }
    }
  }
}

return M
