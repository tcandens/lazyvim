return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = { "s1n7ax/nvim-window-picker" },
    opts = {
      window = {
        position = "right",
        mappings = {
          ["o"] = "open_with_window_picker",
          ["<2-LeftMouse>"] = "open_with_window_picker",
          ["cc"] = function()
            local cc = require("codecompanion")
            cc.toggle()
          end,
        },
      },
    },
  },
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        hint = "floating-big-letter",
        picker_config = {
          handle_mouse_click = true,
        },
      })
    end,
  },
  { "sindrets/diffview.nvim" },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
      local cmp = require("cmp")

      opts.mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      })
    end,
  },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-k>"] = { "select_next", "fallback" },
        ["<C-j>"] = { "select_prev", "fallback" },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        gleam = {},
      },
    },
  },
  -- {
  --   "m4xshen/hardtime.nvim",
  --   lazy = false,
  --   dependencies = { "MunifTanjim/nui.nvim" },
  --   opts = {},
  -- },
}
