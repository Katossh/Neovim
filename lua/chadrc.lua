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

  telescope = {
    style = "bordered",
  },

  cmp = {
    style = "default",
  },
}

M.nvdash = {
  load_on_startup = false,
}

M.lsp = {
  signature = true,
}

M.term = {
  sizes = { sp = 0.30, vsp = 0.25 },
  float = {
    border = "rounded",
  },
}

return M
