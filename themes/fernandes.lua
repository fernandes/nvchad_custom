local M = {}

M.base_30 = {
  white = "#abb2bf",
  darker_black = "#1b1f27",
  black = "#1f212b", --  nvim bg
  black2 = "#252931",
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#373b43",
  grey = "#42464e",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  light_grey = "#6f737b",
  red = "#E46266",
  baby_pink = "#E46266",
  pink = "#DDA2F6",
  line = "#31353d", -- for lines like vertsplit
  green = "#A3BE8C",
  vibrant_green = "#9BC497",
  nord_blue = "#93ddfb",
  blue = "#4D8ACB",
  yellow = "#EDD096",
  sun = "#F89F63",
  purple = "#7E7EDD",
  dark_purple = "#A571F4",
  teal = "#93ddfb",
  orange = "#F89F63",
  cyan = "#B9BED5",
  statusline_bg = "#22262e",
  lightbg = "#2d3139",
  pmenu_bg = "#7e7edf",
  folder_bg = "#7e7edf",
}

M.base_16 = {
  base00 = "#1F212b", -- backgrund
  base01 = "#1F212b",
  base02 = "#222530",
  base03 = "#313343",
  base04 = "#555C77",
  base05 = "#7D839B",
  base06 = "#B9BED5",
  base07 = "#F5FAFF",
  base08 = "#B9BED5",
  base09 = "#F89F63",
  base0A = "#85B1E0",
  base0B = "#DDA2F6",
  base0C = "#9AEFEA",
  base0D = "#F5FAFF",
  base0E = "#7e7edf",
  base0F = "#EDD096",
}

vim.opt.bg = "dark"

M = require("base46").override_theme(M, "fernandes")

return M
