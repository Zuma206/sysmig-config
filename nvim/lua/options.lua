vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.keymap.set("n", "<Space>h", vim.lsp.buf.hover, { silent = true, noremap = true })
vim.keymap.set("n", "<Space>a", vim.lsp.buf.code_action, { silent = true, noremap = true })
vim.keymap.set("n", "<Space>d", vim.diagnostic.open_float, { silent = true, noremap = true })
