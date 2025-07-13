return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      functions = { "italics" },
      keyworkds = { "italics" }
    })
    vim.cmd.colorscheme("catppuccin")
  end
}
