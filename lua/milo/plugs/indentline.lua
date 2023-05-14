vim.opt.termguicolors = true
vim.g.indent_blankline_char = '┆'
vim.g.indent_blankline_char_blankline = ' '
vim.g.indent_blankline_space_char_highlight_list = 'Function'
vim.cmd [[ highlight IndentBlanklineContextSpaceChar guifg=#F0F25F ]]
vim.g.indent_blankline_show_current_context = true

--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#56B6C2 ]]
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#56B6C2 ]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#F0F25F ]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#FDDB88 ]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#F4A0E6 ]]

require("indent_blankline").setup {
  indent_blankline_char_blankline = ' ',
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineContextChar"
  },
}
