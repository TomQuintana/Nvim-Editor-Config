local status, _ = pcall(vim.cmd, "colorscheme vscode")
--local status, _ = pcall(vim.cmd, "colorscheme codedark")
--local status, _ = pcall(vim.cmd, "colorscheme dracula")
--local status, _ = pcall(vim.cmd, "colorscheme gruvbox-material")
--local status, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")
--local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
--vim.cmd[[colorscheme tokyonight-night]]
-- Lua
--vim.cmd[[colorscheme vscode]]

if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

vim.opt.termguicolors = true
vim.o.background = "dark"

-- -- Colors for theme mocha
-- vim.cmd [[highlight @variable guifg=#89b4fa ]] -- {req, res}
-- vim.cmd [[highlight @operator guifg=#89b4fa ]] -- {req, res}
-- vim.cmd [[highlight Function guifg=#f9e2af ]] -- amarillo
-- vim.cmd [[highlight @method guifg=#f9e2af ]] -- amarillo
-- vim.cmd [[highlight @Field guifg=#9cdefe]] -- celeste
-- vim.cmd [[highlight @Property guifg=#9cdefe]] -- res.json({@Property})
-- vim.cmd [[highlight @Parameter guifg=#9cdefe]] --Ej: console
-- --vim.cmd [[highlight @namespace guifg=#fab387]] --Ej: nombre de import 
-- vim.cmd [[highlight Structure guifg=#4ec9b0]]
-- vim.cmd [[highlight rainbowcol1 guifg=#f9e2af]]
-- vim.cmd [[highlight rainbowcol3 guifg=#f38ba8]]
--
-- Colors for vsc
vim.cmd [[highlight @variable guifg=#9cdefe]] -- celeste
--vim.cmd [[highlight @string guifg=#9cdefe]] -- celeste
--vim.cmd [[highlight @Keyword guifg=#f7a7e9]] -- await const 
vim.cmd [[highlight @conditional guifg=#f7a7e9]] -- if 
vim.cmd [[highlight @exception guifg=#f7a7e9]] -- try 
vim.cmd [[highlight @Property guifg=#9cdefe]] -- res.json({@Property})
vim.cmd [[highlight @Parameter guifg=#9cdefe]] --Ej: console
vim.cmd [[highlight Structure guifg=#4ec9b0]] --Ej: Usuario.findById 
--vim.cmd [[highlight @namespace guifg=#f7a7e9]] --Ej: nombre de import 
vim.cmd [[highlight rainbowcol1 guifg=#f9e2af]]
vim.cmd [[highlight rainbowcol3 guifg=#f38ba8]]


-- Colors of TODO comment
vim.cmd [[highlight TodofgTODO guifg=#f9e2af ]]
vim.cmd [[highlight TodoBgTODO gui=bold guifg=#000000 guibg=#f9e2af ]]
vim.cmd [[highlight TodoSignTODO guifg=#f9e2af]]
vim.cmd [[highlight @operator guifg=#89b4fa ]] -- {req, res}


--change color of diagnostic icon error
vim.cmd [[highlight DiagnosticSignError guifg=#E84153 ]]

-- Folder of nerdtree
vim.cmd [[highlight NvimTreeFolderIcon guifg=#E5BE30]]
vim.cmd [[highlight NvimTreeIndentMarker guifg=#c7d0d7]]
vim.cmd [[highlight NvimTreeCursorLine guifg=#8FECFC]]
