require("adil.core")
require("adil.lazy")

vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  disable = { 'missing-fields' },
})
vim.opt.number = true
vim.opt.relativenumber = true
