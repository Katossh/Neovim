-- Catppuccin Frappé palette adapted to NvChad Base46.
-- Palette reference: https://github.com/catppuccin/catppuccin
local colors = {
  rosewater = "#f2d5cf",
  flamingo = "#eebebe",
  pink = "#f4b8e4",
  mauve = "#ca9ee6",
  red = "#e78284",
  maroon = "#ea999c",
  peach = "#ef9f76",
  yellow = "#e5c890",
  green = "#a6d189",
  teal = "#81c8be",
  sky = "#99d1db",
  sapphire = "#85c1dc",
  blue = "#8caaee",
  lavender = "#babbf1",
  text = "#c6d0f5",
  subtext1 = "#b5bfe2",
  subtext0 = "#a5adce",
  overlay2 = "#949cbb",
  overlay1 = "#838ba7",
  overlay0 = "#737994",
  surface2 = "#626880",
  surface1 = "#51576d",
  surface0 = "#414559",
  base = "#303446",
  mantle = "#292c3c",
  crust = "#232634",
}

local M = {}

M.base_30 = {
  white = colors.text,
  darker_black = colors.crust,
  black = colors.base,
  black2 = colors.mantle,
  one_bg = colors.surface0,
  one_bg2 = colors.surface1,
  one_bg3 = colors.surface2,
  grey = colors.overlay0,
  grey_fg = colors.overlay1,
  grey_fg2 = colors.overlay2,
  light_grey = colors.subtext0,
  red = colors.red,
  baby_pink = colors.flamingo,
  pink = colors.pink,
  line = colors.surface1,
  green = colors.green,
  vibrant_green = colors.green,
  nord_blue = colors.sapphire,
  blue = colors.blue,
  yellow = colors.yellow,
  sun = colors.peach,
  purple = colors.mauve,
  dark_purple = colors.mauve,
  teal = colors.teal,
  orange = colors.peach,
  cyan = colors.sky,
  statusline_bg = colors.mantle,
  lightbg = colors.surface0,
  pmenu_bg = colors.surface1,
  folder_bg = colors.blue,
  lavender = colors.lavender,
}

M.base_16 = {
  base00 = colors.base,
  base01 = colors.mantle,
  base02 = colors.surface0,
  base03 = colors.surface1,
  base04 = colors.surface2,
  base05 = colors.text,
  base06 = colors.subtext1,
  base07 = colors.rosewater,
  base08 = colors.red,
  base09 = colors.peach,
  base0A = colors.yellow,
  base0B = colors.green,
  base0C = colors.teal,
  base0D = colors.blue,
  base0E = colors.mauve,
  base0F = colors.flamingo,
}

M.polish_hl = {
  defaults = {
    Comment = { fg = colors.overlay1, italic = true },
    CursorLine = { bg = colors.mantle },
    FloatBorder = { fg = colors.surface2 },
    NormalFloat = { bg = colors.mantle },
  },
  treesitter = {
    ["@variable"] = { fg = colors.text },
    ["@property"] = { fg = colors.teal },
    ["@variable.builtin"] = { fg = colors.red },
  },
}

M.type = "dark"
return require("base46").override_theme(M, "catppuccin_frappe")
