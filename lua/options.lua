require("nvchad.options")

local opt = vim.opt

-- Keep the interface readable without taking space away from the code.
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 6
opt.sidescrolloff = 8
opt.wrap = false

-- Predictable editing and splits.
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.splitbelow = true
opt.splitright = true
opt.confirm = true
opt.undofile = true

-- Search and completion.
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"
opt.updatetime = 250
opt.timeoutlen = 400
opt.pumheight = 10
opt.completeopt = { "menu", "menuone", "noselect" }

-- Use the system clipboard (wl-clipboard on Wayland).
opt.clipboard = "unnamedplus"

-- Diagnostics stay in the sign column; details are shown on demand.
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = { border = "rounded", source = "if_many" },
})
