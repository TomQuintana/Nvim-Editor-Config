-- return {
--   {
--     "catppuccin/nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       local fg_dark = "#B4D0E9"
--       local fg_gutter = "#627E97"
--       local border = "#547998"
--
--       require("tokyonight").setup({
--         style = "night",
--         on_colors = function(colors)
--           colors.bg = bg
--           colors.bg_dark = bg_dark
--           colors.bg_float = bg_dark
--           colors.bg_highlight = bg_highlight
--           colors.bg_popup = bg_dark
--           colors.bg_search = bg_search
--           colors.bg_sidebar = bg_dark
--           colors.bg_statusline = bg_dark
--           colors.bg_visual = bg_visual
--           colors.border = border
--           colors.fg = fg
--           colors.fg_dark = fg_dark
--           colors.fg_float = fg
--           colors.fg_gutter = fg_gutter
--           colors.fg_sidebar = fg_dark
--         end,
--       })
--       -- load the colorscheme here
--       vim.cmd([[colorscheme tokyonight]])
--     end,
--   },
-- }

-- return {
--   --'tiyn/tccs.nvim',
--   'bluz71/vim-moonfly-colors',
--   config = function()
--     --require('tccs').setup()
--     require('moonfly').setup()
--     --vim.cmd('colorscheme tccs')
--     vim.cmd('colorscheme moonfly')
--   end,
-- }



-- return {
--   'oxfist/night-owl.nvim',
--   config = function()
--     require('night-owl').setup()
--     vim.cmd.colorscheme("night-owl")
--   end
-- }
--
return {
  'Mofiqul/vscode.nvim',
  --'olimorris/onedarkpro.nvim',
  --'navarasu/onedark.nvim',
  --"bluz71/vim-moonfly-colors",
  --"folke/tokyonight.nvim",
  --"catppuccin/nvim",

  config = function()
    --local bg = "#212801"
    local bg = "#081101"

    

    require('vscode').setup()
    -- require("onedark").setup({
    --   style= "warmer",
    -- })

    vim.cmd('colorscheme vscode')
    --vim.cmd('colorscheme tokyonight')
    -- change color for arrows in tree to light blue
    -- vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
    -- vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])
    --
    -- -- -- Folder of nerdtree
    vim.cmd [[highlight NvimTreeFolderIcon guifg=#E5BE30]]
    vim.cmd [[highlight NvimTreeFolderName guifg=#DCDFF2]]
    vim.cmd [[highlight NvimTreeFolderNew guifg=#DCDFF2]]
    vim.cmd [[highlight NvimTreeIndentMarker guifg=#E5BE30]]
    vim.cmd [[highlight NvimTreeCursorLine guifg=#8FECFC]]

    -- WarningMsg 
    vim.cmd [[ highlight WarningMsg guifg=#8FECFC ]]


    vim.cmd [[highlight @Parameter guifg=#9cdefe]] --Ej: console
  end
}




  --
  --
  -- {
  --   "folke/tokyonight.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     local bg = "#262626" -- background of file
  --     local bg_dark = "#373737"
  --     local bg_highlight = "#143652"
  --     local bg_search = "#0A64AC"
  --     local bg_visual = "#275378"
  --     local fg = "#CBE0F0"
  --     local fg_dark = "#B4D0E9"
  --     local fg_gutter = "#627E97"
  --     local border = "#547998"
  --
  --     require("tokyonight").setup({
  --       style = "night",
  --       on_colors = function(colors)
  --         colors.bg = bg
  --         colors.bg_dark = bg_dark
  --         colors.bg_float = bg_dark
  --         colors.bg_highlight = bg_highlight
  --         colors.bg_popup = bg_dark
  --         colors.bg_search = bg_search
  --         colors.bg_sidebar = bg_dark
  --         colors.bg_statusline = bg_dark
  --         colors.bg_visual = bg_visual
  --         colors.border = border
  --         colors.fg = fg
  --         colors.fg_dark = fg_dark
  --         colors.fg_float = fg
  --         colors.fg_gutter = fg_gutter
  --         colors.fg_sidebar = fg_dark
  --       end,
  --     })
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme tokyonight]])
  --   end,
  -- },
--}
