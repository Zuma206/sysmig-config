return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "L3MON4D3/LuaSnip"
  },
  config = function()
    local luasnip = require("luasnip")
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end
      },
      sources = {
        { name = "nvim_lsp" }
      },
      window = {
        completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered()
      }
    })
  end
}
