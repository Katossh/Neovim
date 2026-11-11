---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin_frappe",
  transparency = false,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  tabufline = {
    enabled = false,
  },

  nvdash = {
    load_on_startup = false,
  },

  telescope = {
    style = "bordered",
  },

  cmp = {
    style = "default",
    icons = true,
  },

  lsp = {
    signature = true,
    semantic_tokens = false,
  },

  term = {
    sizes = { sp = 0.30, vsp = 0.25 },
    float = {
      border = "rounded",
    },
  },
}

return M
