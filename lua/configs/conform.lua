return {
  formatters_by_ft = {
    lua = { "stylua" },
    nix = { "nixfmt" },
    rust = { "rustfmt" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    sh = { "shfmt" },
    bash = { "shfmt" },
    json = { "jq" },
  },

  default_format_opts = { lsp_format = "fallback" },
}
