--local status, _ = pcall(vim.cmd, "colorscheme tccs")
local status, _ = pcall(vim.cmd, "colorscheme dark_modern")
--local status, _ = pcall(vim.cmd, "colorscheme catppuccin-mocha")

--local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
--require('personal_schema')
--vim.cmd('colorscheme personal_schema')

-- if not status then
--   print("Colorscheme not found!") -- print error if colorscheme not installed
--   return
-- end
--
-- require("tokyonight").setup({
--   -- use the night style
--   style = "night",
--   -- disable italic for functions
--   styles = {
--     functions = {}
--   },
--   sidebars = { "qf", "vista_kind", "terminal", "packer" },
--   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--   on_colors = function(colors)
--     colors.hint = colors.orange
--     colors.error = "#ff0000"
--   end
-- })


-- vim.opt.termguicolors = true
-- vim.o.background = "dark"
--
--vim.cmd [[highlight @variable guifg=#F3C4F5]] -- celeste
--
--vim.cmd [[highlight @variable guifg=#91EDFB]] -- celeste
--vim.cmd [[highlight @variable guifg=#87C4FF]] -- celeste
--vim.cmd [[highlight @variable.builtin guifg=#F875AB]] -- celeste - this - self
--vim.cmd [[highlight @string guifg=#57C6FC]] -- celeste
-- --vim.cmd [[highlight @Keyword guifg=#f7a7e9]] -- await const 
-- vim.cmd [[highlight @conditional guifg=#f7a7e9]] -- if 
-- vim.cmd [[highlight @exception guifg=#f7a7e9]] -- try 
-- vim.cmd [[highlight @Property guifg=#9cdefe]] -- res.json({@Property})
-- vim.cmd [[highlight @Parameter guifg=#9cdefe]] --Ej: console
--vim.cmd [[highlight Structure guifg=#4ec9b0]] --Ej: Usuario.findById 
--vim.cmd [[highlight @namespace guifg=#f7a7e9]] --Ej: nombre de import 

-- -- vim.cmd [[highlight rainbowcol1 guifg=#f9e2af]]
-- -- vim.cmd [[highlight rainbowcol3 guifg=#f38ba8]]
-- --
-- -- vim.cmd [[highlight @operator guifg=#89b4fa ]] -- {req, res}
-- --
-- --change color of diagnostic icon error
-- vim.cmd [[highlight DiagnosticSignError guifg=#E84153 ]]
--
-- -- Folder of nerdtree
vim.cmd [[highlight NvimTreeFolderIcon guifg=#E5BE30]]
vim.cmd [[highlight NvimTreeFolderName guifg=#F6FCFE]]
vim.cmd [[highlight NvimTreeIndentMarker guifg=#E5BE30]]
vim.cmd [[highlight NvimTreeCursorLine guifg=#8FECFC]]


vim.cmd [[highlight @Parameter guifg=#9cdefe]] --Ej: console
--
-- --vim.cmd [[highlight NvimTreeNormal guifg=#8FECFC]]
-- --
-- -- Line Color
-- vim.cmd [[highlight LineNr guifg=#B2D2FD]]
--
-- -- Diagnostic Highlight
-- vim.cmd [[highlight BufferLineInfoDiagnosticSelected guifg=#FB892F ]]
-- vim.cmd [[highlight BufferLineInfoSelected guifg=#FB892F ]]
--
-- vim.cmd [[highlight BufferLineHintDiagnosticSelected guifg=#FB892F ]]
-- vim.cmd [[highlight BufferLineHintSelected guifg=#FB892F ]]
--
-- vim.cmd [[highlight NvimTreeLspDiagnosticsHint guifg=#FB892F ]]
-- vim.cmd [[highlight DiagnosticSignHint guifg=#FB892F ]]
-- vim.cmd [[highlight SagaText guifg=#FB892F ]]
--
-- vim.cmd[[highlight Visual guifg=#FAF020]]

