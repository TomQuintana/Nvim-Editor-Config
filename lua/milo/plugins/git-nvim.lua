-- return {
--
--   -- "tanvirtin/vgit.nvim",
--   --
--   -- dependencies = {
--   --   'nvim-lua/plenary.nvim'
--   -- },
--   -- config = function()
--   --   require('vgit').setup()
--   --
--   --   local keymap = vim.keymap -- for conciseness
--   --   keymap.set("n", "<leader>db", ":VGit project_diff_preview<CR>")
--   --   keymap.set("n", "<leader>df", ":VGit buffer_diff_preview<CR>")
--   --   keymap.set("n", "<leader>]n", "<cmd>Gitsigns prev_hunk<CR>")
--   -- end,
-- }


return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",      -- required
    "sindrets/diffview.nvim",     -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
    "echasnovski/mini.pick",          -- optional
  },
  --   require("gitsigns").setup()
  --   vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {})
  --   vim.keymap.set("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", {})
  -- end,
}
