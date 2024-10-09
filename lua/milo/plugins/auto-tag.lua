return {
  "windwp/nvim-ts-autotag",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    require("nvim-ts-autotag").setup({
      -- Enable autotag
      enable_close = true,       -- Auto close tags
      enable_rename = true,      -- Auto rename pairs of tags
      enable_close_on_slash = false, -- Auto close on trailing </

      filetypes = { "html" , "javascriptreact", "typescriptreact"},

      -- Also override individual filetype configs, these take priority.
      -- Empty by default, useful if one of the "opts" global settings
      -- doesn't work well in a specific filetype
    })
  end,
}

