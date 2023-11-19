local opt = vim.opt -- for conciseness

-- line numbers 
--opt.relativenumber = true
opt.number = true

-- tabs & indentation 
opt.tabstop = 2
vim.autoindent = true
vim.opt.smartindent = true
opt.shiftwidth = 2
opt.expandtab = true
vim.shiftwidth = 2
vim.wrap = false -- No Wrap lines

-- line wrapping
opt.wrap = true

-- deactivate swap files
opt.swapfile = false

-- clipboard 
opt.clipboard:append("unnamedplus")

-- indentation
vim.g['python_pep8_indent_enabled'] = 1

vim.opt.title = true

vim.g.rainbow_delimiters = {
  highlight = {
    "RainbowDelimiterYellow",
    "RainbowDelimiterBlue",
    "RainbowDelimiterOrange",
    "RainbowDelimiterGreen",
    "RainbowDelimiterViolet",
    "RainbowDelimiterCyan",
  },
}
