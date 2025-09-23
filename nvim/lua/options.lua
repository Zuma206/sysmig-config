vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_banner = false
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"
vim.o.guicursor = "n:block,i:block-blinkoff1-blinkon1"

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.keymap.set("n", "<leader>r", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>t", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>w", vim.cmd.bd)
vim.keymap.set("n", "<leader>g", function() vim.cmd.Telescope("buffers") end)
