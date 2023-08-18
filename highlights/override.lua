local theme = require("custom.highlights.colors")

local colors = {
  Boolean = { fg = theme.rb },
  Type = { fg = theme.mb, sp = "none", },

  String = { fg = theme.cb, },
  TSVariable = { fg = theme.bb, },
  TSVariableBuiltin = { fg = theme.bb, },
  TSPunctBracket = { fg = theme.rb, },
  TSDefinition = { sp = theme.g, underline = true, },
  TSProperty = { fg = theme.g, },
  St_NormalMode = { bg = theme.m, },
  St_NormalModeSep = { fg = theme.m, },
  St_VisualModeSep = { fg = theme.y, },
  St_InsertMode = { bg = theme.mb, },
  St_InsertModeSep = { fg = theme.mb, },
  Visual = { bg = theme.bla4, },
  Search = { bg = theme.y, },
  DevIconrb = { fg = theme.r },
  TSField = { fg = theme.bb },
  NvimTreeNormal = { bg = theme.bla0, },
  NvimTreeNormalNC = { bg = theme.bla0, },
  DevIconlua = { fg = theme.bb, },
  DevIcontoml = { fg = theme.bb, },
  DevIconLicense = { fg = theme.r, },
  NvimTreeOpenedFolderName = { fg = theme.m, },
  NvimTreeEmptyFolderName = { fg = theme.whi3, bg = theme.bla4 },
  NvimTreeFolderName = { fg = theme.whi3, },
  TbLineBufOnClose = { fg = theme.whi5 },
  TbLineCloseAllBufsBtn = { fg = theme.r, bg = theme.bla2, },
  St_cwd_icon = { bg = theme.m, },
  St_cwd_sep = { fg = theme.m, },
  St_VisualMode = { bg = theme.yb, },
  St_CommandMode = { bg = theme.gb, },
  St_CommandModeSep = { fg = theme.gb },
  htmlHead = { fg = theme.y },
  htmlTagName = { fg = theme.y },
  htmlTSFunction = { fg = theme.y },
}

-- colors['@tag.delimiter.html'] = { fg = theme.whi3 }
colors['@text.uri'] = { fg = theme.y }

return colors
