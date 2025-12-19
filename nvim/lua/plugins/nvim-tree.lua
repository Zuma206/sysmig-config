return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local nvim_tree = require("nvim-tree")
    local api = require("nvim-tree.api")

    nvim_tree.setup({
      view = {
        width = 25,
      },
      git = {
        ignore = false
      },
      filters = {
        custom = {".git"}
      }
    })

    vim.keymap.set("n", "<leader>e", api.tree.toggle)
  end
}
