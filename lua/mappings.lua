require("nvchad.mappings")

local map = vim.keymap.set

-- Command line and insert-mode escape.
map("n", ";", ":", { desc = "Enter command mode" })
map("i", "jk", "<Esc>", { desc = "Leave insert mode" })

-- Telescope: one consistent project navigation workflow.
map("n", "<leader>ff", "<cmd>Telescope find_files hidden=true<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep hidden=true<CR>", { desc = "Search project" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Recent files" })
map("n", "<C-n>", "<cmd>Telescope buffers<CR>", { desc = "Find open buffers" })

-- Oil is opened only when requested; there is no permanent file tree.
map("n", "-", "<cmd>Oil<CR>", { desc = "Browse current directory" })
map("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Browse files" })

-- NvChad's toggleable terminal, shown as a compact bottom split.
map("n", "<leader>tt", function()
  require("nvchad.term").toggle({ pos = "sp", id = "compact-terminal" })
end, { desc = "Toggle terminal" })

-- LSP navigation and refactoring.
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map({ "n", "x" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- Diagnostics.
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>cd", function()
  vim.diagnostic.open_float(nil, { border = "rounded", source = "if_many" })
end, { desc = "Line diagnostics" })
map("n", "<leader>xx", function()
  vim.diagnostic.setqflist({ open = true })
end, { desc = "Project diagnostics" })

-- Formatting is explicit; saving a file never silently rewrites it.
map("n", "<leader>cf", function()
  require("conform").format({ async = true, lsp_format = "fallback" })
end, { desc = "Format buffer" })

-- Git gutter actions from Gitsigns; no separate Git TUI is required.
map("n", "<leader>hp", function() require("gitsigns").preview_hunk() end, { desc = "Preview Git hunk" })
map("n", "<leader>hs", function() require("gitsigns").stage_hunk() end, { desc = "Stage Git hunk" })
map("n", "<leader>hr", function() require("gitsigns").reset_hunk() end, { desc = "Reset Git hunk" })
map("n", "<leader>hb", function() require("gitsigns").blame_line({ full = true }) end, { desc = "Blame line" })

-- Toggle all mini.animate effects without removing the plugin.
map("n", "<leader>ua", function()
  vim.g.minianimate_disable = not vim.g.minianimate_disable
  local state = vim.g.minianimate_disable and "disabled" or "enabled"
  vim.notify("Animations " .. state)
end, { desc = "Toggle animations" })
