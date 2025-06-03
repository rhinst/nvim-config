-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false

vim.diagnostic.config({
  virtual_text = {
    severity = vim.diagnostic.severity.ERROR, -- or omit to show all severities
    source = "if_many", -- shows source if multiple diagnostics
    spacing = 2,
    prefix = "●", -- or "■", "▎", "x"
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
