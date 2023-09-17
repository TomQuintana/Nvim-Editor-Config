require("todo-comments").setup {
  signs = true,
  sign_priority = 8,

  keywords = {
    FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
    TODO = { icon = " ", color = "info" },
    QUESTION = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "NOTE" } },
    TEST = { icon = "󰙨 ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    PENDING = { icon = "󰂺 ", color = "pending", alt = { "PENDING" }},
  },

  gui_style = {
    fg = "NONE",
    bg = "BOLD",
  },

  merge_keywords = true,
  highlight = {
    multiline = true,
    multiline_pattern = "^.",
    multiline_context = 10,
    before = "",
    keyword = "wide",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
  },

  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#BC7AF9" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" },
    pending = { "Pending", "#BC7AF9" }
  },

  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
  },
}

-- Colors of TODO comment
vim.cmd [[highlight TodofgTODO guifg=#f9e2af ]]
vim.cmd [[highlight TodoBgTODO gui=bold guifg=#000000 guibg=#f9e2af ]]
vim.cmd [[highlight TodoSignTODO guifg=#f9e2af]]

-- Colors of QUESTION comment
vim.cmd [[highlight TodofgQUESTION guifg=#FB892F ]]
vim.cmd [[highlight TodoBgQUESTION gui=bold guifg=#F3F3F3 guibg=#FB892F ]]
vim.cmd [[highlight TodoSignQUESTION guifg=#FB892F]]

vim.cmd [[highlight TodoBgPENDING  gui=bold guifg=#F3F3F3 guibg=#BC7AF9]]

-- Colors of NOTE comment
vim.cmd [[highlight TodofgNOTE guifg=#9cdefe]]
vim.cmd [[highlight TodoBgNOTE gui=bold guifg=#000000 guibg=#9cdefe ]]
vim.cmd [[highlight TodoSignNOTE guifg=#9cdefe]]
