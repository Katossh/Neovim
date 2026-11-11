require("nvchad.configs.lspconfig").defaults()

-- These servers are installed by the operating system, not Mason.
local servers = {
  "bashls",
  "clangd",
  "jsonls",
  "nixd",
  "rust_analyzer",
}

vim.lsp.enable(servers)
