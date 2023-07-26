local opt = vim.opt -- for conciseness

-- line numbers 
opt.relativenumber = true
opt.number = true

-- tabs & indentation 
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- deactivate swap files
opt.swapfile = false

-- clipboard 
opt.clipboard:append("unnamedplus")

-- indentation
vim.g['python_pep8_indent_enabled'] = 1
