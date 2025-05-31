vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  virtual_text = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '\u{f530}',
      [vim.diagnostic.severity.WARN] = '\u{f071}',
      [vim.diagnostic.severity.INFO] = '\u{f02fc}',
      [vim.diagnostic.severity.HINT] = '\u{f0536}',
    }
  }
})
