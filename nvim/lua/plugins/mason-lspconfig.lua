return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    vim.lsp.config("*", {
      capabilities = cmp_nvim_lsp.default_capabilities()
    })

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "gopls",
      }
    })
  end
}
