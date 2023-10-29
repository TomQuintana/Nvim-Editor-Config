-- vim.opt.termguicolors = true
-- vim.g.indent_blankline_char = '┆'
-- vim.g.indent_blankline_char_blankline = ' '
-- vim.g.indent_blankline_space_char_highlight_list = 'Function'
-- vim.cmd [[ highlight IndentBlanklineContextSpaceChar guifg=#F0F25F ]]
-- vim.g.indent_blankline_show_current_context = true
--
-- --vim.cmd [[highlight IndentBlanklineIndent1 guifg=#56B6C2 ]]
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#56B6C2 ]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#F0F25F ]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#FDDB88 ]]
-- vim.cmd [[highlight IndentBlanklineContextChar guifg=#F4A0E6 ]]
--
-- require("ibl").setup {
--   indent_blankline_char_blankline = ' ',
--   char_highlight_list = {
--     "IndentBlanklineIndent1",
--     "IndentBlanklineIndent2",
--     "IndentBlanklineIndent3",
--     "IndentBlanklineContextChar"
--   },
-- }
--
local highlight = {
    "RainbowGreen",
    "RainbowBlue",
    "RainbowYellow",
    "RainbowOrange",
    "RainbowViolet",
    "RainbowCyan",
    "RainbowRed",
}

local highlight_scope = {
    "RainbowViolet",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
end)

require("ibl").setup { 
  indent = { 
    char = "|" ,
    highlight = highlight 
  },
  scope = { 
    char = '|',
    show_exact_scope = true,
    show_start = true,
    highlight = highlight_scope
  },
}
