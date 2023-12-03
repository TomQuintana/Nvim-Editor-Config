return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  event = { "BufReadPre" },
  config = function()
    local bufferline = require("bufferline")

    bufferline.setup({
      options = {
        --separator_style = "slant",
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
          for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
            or (e == "warning" and " " or " " )
            s = s .. n .. sym
          end
          return s
        end
      },
    })

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>s", ":BufferLineCycleNext<CR>")
    keymap.set("n", "<leader>a", ":BufferLineCyclePrev<CR>")
    keymap.set("n", "<leader>bf", ":BufferLinePickClose<CR>")

  end,
}
