local theme = require("custom.highlights.colors")

return   {
  Boolean = { fg = theme.rb },
  Type = { fg = theme.mb, sp = "none", },

  TSVariableBuiltin = {
    fg = theme.g,
  },

  String = {
    fg = theme.cb,
  },

  TSVariable = {
    fg = theme.bb,
  },

  TSVariableBuiltin = {
    fg = theme.bb,
  },

  TSPunctBracket = {
    fg = theme.rb,
  },

  TSDefinition = {
    sp = theme.g,
    underline = true,
  },

  TSProperty = {
    fg = theme.g,
  },

  St_NormalMode = {
    bg = theme.m,
  },

  St_NormalModeSep = {
    fg = theme.m,
  },

  St_VisualMode = {
    bg = theme.y,
  },

  St_VisualModeSep = {
    fg = theme.y,
  },

  St_InsertMode = {
    bg = theme.mb,
  },

  St_InsertModeSep = {
    fg = theme.mb,
  },

  Visual = {
    bg = theme.bla4,
  },

  Search = {
    bg = theme.rb,
  },

  DevIconrb = {
    fg = theme.r
  },

  -- YAML
  TSPunctDelimiter = {
    fg = theme.whi3
  },

  TSField = {
    fg = theme.bb
  },

  NvimTreeNormal = {
    bg = theme.bla0,
  },

  NvimTreeNormalNC = {
    bg = theme.bla0,
  },

  DevIconlua = {
    fg = theme.bb,
  },

  DevIcontoml = {
    fg = theme.bb,
  },

  DevIconLicense = {
    fg = theme.r,
    -- guifg=#ffe291
  },

  NvimTreeOpenedFolderName = {
    fg = theme.m,
  },

  NvimTreeEmptyFolderName = {
    fg = theme.whi3,
    bg = theme.bla4
  },

  NvimTreeFolderName = {
    fg = theme.whi3,
  },

  TbLineBufOnClose = {
    fg = theme.whi5
  },

  TbLineCloseAllBufsBtn = {
    fg = theme.r,
    bg = theme.bla2,
  },

  St_cwd_icon = {
    bg = theme.m,
  },

  St_cwd_sep = {
    fg = theme.m,
  },

  St_VisualMode = {
    bg = theme.yb,
  },
  
  St_VisualModeSep = {
    fg = theme.yb
  },

  St_CommandMode = {
    bg = theme.gb,
  },
  
  St_CommandModeSep = {
    fg = theme.gb
  },
}
