return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {
        denols = {
          on_attach = require("lazyvim.util").lsp.on_attach,
          root_dir = require("lspconfig").util.root_pattern("deno.json", "deno.jsonc"),
        },
        vtsls = {
          root_dir = require("lspconfig").util.root_pattern("package.json"),
        },
      },
    },
  },
}
