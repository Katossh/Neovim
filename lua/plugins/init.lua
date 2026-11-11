return {
  -- NvChad ships NvimTree and Mason by default; this config uses Oil and system tools.
  { "nvim-tree/nvim-tree.lua", enabled = false },
  { "mason-org/mason.nvim", enabled = false },

  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = function(_, opts)
      opts.ensure_installed = { "bash", "c", "cpp", "diff", "json", "lua", "luadoc", "markdown", "markdown_inline", "nix", "query", "rust", "toml", "vim", "vimdoc", "yaml" }
      opts.highlight = vim.tbl_deep_extend("force", opts.highlight or {}, { enable = true })
      opts.auto_install = false
      return opts
    end,
  },

  {
    "stevearc/conform.nvim",
    opts = require("configs.conform"),
  },

  {
    "stevearc/oil.nvim",
    cmd = { "Oil" },
    opts = {
      default_file_explorer = true,
      delete_to_trash = false,
      skip_confirm_for_simple_edits = true,
      columns = { "icon" },
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 2,
        border = "rounded",
        max_width = 100,
        max_height = 30,
      },
    },
  },

  {
    "nvim-mini/mini.nvim",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("mini.ai").setup()
      require("mini.surround").setup()

      local animate = require("mini.animate")
      animate.setup({
        -- Keep basic h/j/k/l and other cursor motions instantaneous.
        cursor = { enable = false },

        -- Smooth scroll, but keep key-repeat responsive.
        scroll = {
          timing = function(_, steps)
            return math.min(120 / steps, 8)
          end,
          subscroll = animate.gen_subscroll.equal({ max_output_steps = 24 }),
        },

        resize = {
          timing = animate.gen_timing.linear({ duration = 110, unit = "total" }),
        },
        open = {
          timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
        },
        close = {
          timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
        },
      })
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
          width = 0.88,
          height = 0.80,
        },
        file_ignore_patterns = {
          "%.git/",
          "target/",
          "node_modules/",
          "%.direnv/",
          "^result$",
        },
      })
      return opts
    end,
  },
}
