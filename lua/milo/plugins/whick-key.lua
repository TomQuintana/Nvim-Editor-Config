return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- Disable the automatic opening of which-key when the leader key is pressed
    triggers = {}, -- disable all automatic triggers

    -- Specify custom triggers
    -- triggers_delay= {
    --   "<leader>zz", -- example custom trigger
    -- },
    -- other configuration options
  },
  -- config = function()
  --   local which_key = require("which-key")
  --
  --   -- -- Opciones
  --   -- local opts = {
  --   --   mode = "n", -- NORMAL mode
  --   --   prefix = "<leader>kw",
  --   --   buffer = nil, -- Mappings globales
  --   --   silent = true,
  --   --   noremap = true,
  --   --   nowait = true,
  --   -- }
  --
  --   -- Mappings
  --   local mappings = -- Suggested Spec:
  --   {
  --     { "w", "<cmd>w<CR>", desc = "Save" },
  --   }
  --
  --
  --
  --
  --   which_key.register(mappings)
  -- end
}

--
-- local opts = {
--     mode = "n", -- NORMAL mode
--     prefix = "<leader>kw",
--     buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--     silent = true, -- use `silent` when creating keymaps
--     noremap = true, -- use `noremap` when creating keymaps
--     nowait = true, -- use `nowait` when creating keymaps
-- }
--
-- local mappings = {
--
--     ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
--     ["p"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- Invoking plugin manager
--     ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
--     ["w"] = { "<cmd>w!<CR>", "Save" }, -- Save current file
--
-- }
--
