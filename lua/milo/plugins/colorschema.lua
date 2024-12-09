return {
 'Mofiqul/vscode.nvim',
  --'olimorris/onedarkpro.nvim',
  --'navarasu/onedark.nvim',
  --"bluz71/vim-moonfly-colors",
  -- "folke/tokyonight.nvim",
  --"catppuccin/nvim",

  config = function()
    --local bg = "#212801"
    local bg = "#081101"

    require('vscode').setup({
      on_colors = function(colors)
        colors.bg = bg
      end,
    })

   --vim.cmd('colorscheme tokyonight-night')
   vim.cmd('colorscheme vscode')

    -- -- -- Folder of nerdtree
    -- vim.cmd [[highlight NvimTreeFolderIcon guifg=#E5BE30]]
    -- vim.cmd [[highlight NvimTreeFolderName guifg=#DCDFF2]]
    -- vim.cmd [[highlight NvimTreeFolderNew guifg=#DCDFF2]]
    -- vim.cmd [[highlight NvimTreeIndentMarker guifg=#E5BE30]]
    -- vim.cmd [[highlight NvimTreeCursorLine guifg=#8FECFC]]

    --Telescope color like tokyonight theme
    vim.cmd [[hi TelescopePromptTitle guifg=#ff9e64]]
    vim.cmd[[hi TelescopePromptBorder guifg=#ff9e64]]
    vim.cmd [[hi TelescopeBorder guifg=#D9EDBF]]

    -- Markdown
    -- vim.cmd [[hi @markup.heading.1.markdown cterm=bold gui=bold guifg=#41B06E]]
    -- vim.cmd [[hi @markup.heading.2.markdown cterm=bold gui=bold guifg=#e0af68]]
    --
   -- WarningMsg 
    vim.cmd [[ highlight WarningMsg guifg=#8FECFC ]]

    vim.cmd [[highlight @variable.builtin guifg=#d86fc2 ]] --Ej: console
-- 06be9a

  end
}
