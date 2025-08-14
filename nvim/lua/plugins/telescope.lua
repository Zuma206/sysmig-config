return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").load_extension("ui-select")
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>b", builtin.buffers, { silent = true, noremap = true })
    vim.keymap.set("n", "<leader>f", builtin.find_files, { silent = true, noremap = true })
  end
}
