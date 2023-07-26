vim.g.mapleader = " "

local keymap = vim.keymap

-- general keys
keymap.set('n', '<leader>w', ':w<CR>',{noremap = true})
keymap.set('n', '<leader>q', ':q<CR>',{noremap = true})
keymap.set('n', '<leader>wq', ':wq<CR>',{noremap = true})
keymap.set('n', '<leader>fw', ':w!<CR>',{noremap = true})

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Telescope find .env files
-- NOTE: in the future join this config with telescope.set()
keymap.set('n', '<leader>fh', ":Telescope file_browser hidden=true<CR>")

-- NerdTree 
keymap.set("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>") --  go to previous tab

-- Buffer
keymap.set("n", "<leader>s", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>a", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>bf", ":BufferLinePickClose<CR>")

-- Markdow preview
keymap.set("n", "<leader>mp", ":Glow<CR>")
keymap.set("n", "<leader>mc", ":Glow!<CR>")

--TODO: add keymaps for mergetool 

-- Trouble toggle
keymap.set("n", "<leader>tg", ":TroubleToggle<CR>")

-- Todo Comments
keymap.set("n", "<leader>td", ":TodoLocList:<CR>")

-- NOTE: 
-- vim-surround function whit visual mode and press shift+s and caracter for put

-- Git
keymap.set("n", "<leader>dp", ":VGit project_diff_preview<CR>")
keymap.set("n", "<leader>df", ":VGit buffer_diff_preview<CR>")

-- Python
vim.api.nvim_set_keymap('n', '<leader>d', '<Cmd>lua require("jedi").goto()<CR>', { noremap = true, silent = true })

--TODO: add all keymap for python

keymap.set("n", "<leader>gd", ":Lspsaga peek_definition<CR>")
keymap.set("n", "<leader>gi", ":lua vim.lsp.buf.implementation<CR>")
keymap.set("n", "<leader>hd", ":Lspsaga hover_doc<CR>")
keymap.set("n", "<leader>gf", ":Lspsaga finder<CR>")
keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>")
keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>")
keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>")

--Ctrl O to jump back to the previous (older) location.
--Ctrl I same as Tab) to jump forward to the next (newer) location




