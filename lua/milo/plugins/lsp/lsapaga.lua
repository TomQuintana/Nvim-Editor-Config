return {
  "nvimdev/lspsaga.nvim",

  config = function ()
    local saga = require("lspsaga")
    saga.setup({
      -- keybinds for navigation in lspsaga window
      scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
      -- use enter to open file with definition preview
      definition = {
        edit = "<CR>",
      },
      ui = {
        colors = {
          normal_bg = "#022746",
        },
      },
      code_action_lightbulb = {
        enable = false,
        sign = false,
        virtual_text = false,
      },
    })
  end
}
