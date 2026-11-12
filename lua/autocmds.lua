require("nvchad.autocmds")

local group = vim.api.nvim_create_augroup("user_preferences", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
  end,
})

-- Use two spaces in common configuration formats; keep four for Rust/C/C++.
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = { "lua", "nix", "json", "yaml", "toml", "sh", "bash" },
  callback = function()
    vim.bo.expandtab = true
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  end,
})

-- Go conventionally uses tabs.
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = "go",
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 0
  end,
})
