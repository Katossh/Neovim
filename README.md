# Neovim

A compact, terminal-first Neovim configuration built on [NvChad](https://github.com/NvChad/NvChad).

The goal is a comfortable programming editor, not a terminal IDE: fast project navigation, language intelligence, Git change indicators, pleasant editing, and a small integrated terminal without permanent sidebars or a dashboard.

## Design

- **Theme:** Catppuccin Frappé, implemented as a native NvChad Base46 theme.
- **UI:** compact statusline; no dashboard or buffer tabline.
- **Navigation:** Telescope for fuzzy search; Oil for on-demand filesystem browsing.
- **Code:** NvChad's LSP and completion defaults, Treesitter highlighting, and Conform for explicit formatting.
- **Git:** Gitsigns gutter and hunk actions. Git itself remains CLI-first.
- **Editing:** mini.ai and mini.surround.
- **Motion:** subtle scroll and window animations from mini.animate. Cursor-trail animation is intentionally disabled so ordinary Vim motions remain immediate.
- **Dependencies:** language servers and formatters are expected on PATH; Mason is disabled.

## Requirements

- Neovim 0.11 or newer.
- Git.
- A Nerd Font (JetBrainsMono Nerd Font works well).
- `ripgrep` and `fd` for Telescope search.
- A C compiler and `tree-sitter` CLI for Treesitter parsers.
- `wl-clipboard` on Wayland, or an appropriate clipboard provider on X11.

## Install

Clone this repository as your Neovim configuration:

```sh
git clone https://github.com/Katossh/Neovim.git ~/.config/nvim
nvim
```

On first launch, allow lazy.nvim to install the plugins. Then run:

```vim
:Lazy sync
:checkhealth
```

Treesitter uses the compatibility `master` branch because this configuration targets NvChad v2.5 and Neovim 0.11. Do not change it to the plugin's newer `main` branch without migrating the Treesitter setup.

Keep the generated `lazy-lock.json` in version control after the first successful sync to pin plugin revisions.

## External language tools

Install these through the operating system package manager (on NixOS, through the system configuration):

| Purpose | Executable |
|---|---|
| Rust language server | `rust-analyzer` |
| Nix language server | `nixd` |
| C/C++ language server | `clangd` |
| Bash language server | `bash-language-server` |
| JSON language server | `vscode-json-language-server` |
| Lua language server | `lua-language-server` |
| Lua formatter | `stylua` |
| Nix formatter | `nixfmt` |
| Rust formatter | `rustfmt` |
| C/C++ formatter | `clang-format` |
| Shell formatter | `shfmt` |
| JSON formatter | `jq` |

The Lua language server is enabled by NvChad's defaults. The other configured servers are enabled in `lua/configs/lspconfig.lua`. Missing executables simply mean that the corresponding language integration will not start.

Formatting is manual by default; use `<leader>cf`. This avoids unexpected file rewrites on save.

## Keybindings

The leader key is Space.

| Shortcut | Action |
|---|---|
| `<leader>ff` | Find files (including hidden files) |
| `<leader>fg` | Search project text |
| `<leader>fb` | Find open buffers |
| `<leader>fr` | Recent files |
| `-` or `<leader>e` | Open Oil in the current directory |
| `<leader>tt` | Toggle the integrated terminal |
| `<leader>cf` | Format the current buffer |
| `gd` / `gr` | Definition / references |
| `K` | LSP hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `[d` / `]d` | Previous / next diagnostic |
| `<leader>xx` | Open project diagnostics in quickfix |
| `<leader>hp` | Preview Git hunk |
| `<leader>hs` | Stage Git hunk |
| `<leader>hr` | Reset Git hunk |
| `<leader>hb` | Blame current line |
| `<leader>ua` | Toggle animations |

NvChad's built-in keymap cheatsheet is available with `:NvCheatsheet`.

## Deliberately not included

No LazyGit dependency, AI assistant, debugger framework, startup dashboard, permanent file tree, session manager, or automatic formatter-on-save. Add these only when a concrete workflow requires them.