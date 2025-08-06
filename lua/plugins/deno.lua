if true then
  return {}
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {
        denols = {
          on_attach = require("lazyvim.util").lsp.on_attach,
        },
        ts_ls = {
          on_attach = require("lazyvim.util").lsp.on_attach,
        },
      },
    },
  },
}
