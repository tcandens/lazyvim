-- if true then
--   return {}
-- end

return {
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
}
