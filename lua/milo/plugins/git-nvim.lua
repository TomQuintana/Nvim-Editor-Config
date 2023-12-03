return {
  "tanvirtin/vgit.nvim",
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('vgit').setup()

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>dp", ":VGit project_diff_preview<CR>")
    keymap.set("n", "<leader>df", ":VGit buffer_diff_preview<CR>")
  end,
}

