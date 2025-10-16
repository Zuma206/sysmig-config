return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "b0o/schemastore.nvim",
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local schemastore = require("schemastore")

    vim.lsp.config("*", {
      capabilities = cmp_nvim_lsp.default_capabilities(),
    })

    vim.lsp.config("jsonls", {
      settings = {
        json = {
          schemas = schemastore.json.schemas(),
          validate = {
            enable = true,
          },
        },
      },
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "emmet_language_server",
        "clangd",
        "jsonls",
        "lua_ls",
        "gopls",
        "ts_ls",
      }
    })
  end
}
