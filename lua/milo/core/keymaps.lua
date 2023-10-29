vim.g.mapleader = " "

local keymap = vim.keymap

-- general keys
keymap.set('n', '<leader>w', ':w<CR>',{noremap = true})
keymap.set('n', '<leader>q', ':q<CR>',{noremap = true})
keymap.set('n', '<leader>wq', ':wq<CR>',{noremap = true})
keymap.set('n', '<leader>fw', ':w!<CR>',{noremap = true})

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Telescope find .env files
-- NOTE: in the future join this config with telescope.set()
--keymap.set('n', '<leader>fh', ":Telescope file_browser hidden=true<CR>")

-- NerdTree 
keymap.set("n", "<leader>nt", ":NvimTreeFindFileToggle<CR>") --  go to previous tab

-- Buffer
keymap.set("n", "<leader>s", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>a", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>bf", ":BufferLinePickClose<CR>")

-- Markdow preview
keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")
keymap.set("n", "<leader>mc", ":MarkdownPreviewStop<CR>")

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
keymap.set("n", "<leader>du", ":VGit hunk_up<CR>")
keymap.set("n", "<leader>dd", ":VGit hunk_down<CR>")

-- Python
vim.api.nvim_set_keymap('n', '<leader>d', '<Cmd>lua require("jedi").goto()<CR>', { noremap = true, silent = true })

keymap.set("n", "<leader>gd", ":Lspsaga goto_definition<CR>")
keymap.set("n", "<leader>gi", ":Lspsaga goto_type_definition<CR>")
keymap.set("n", "<leader>hd", ":Lspsaga hover_doc<CR>")
keymap.set("n", "<leader>gf", ":Lspsaga finder<CR>")
keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>")
keymap.set("n", "<leader>d", ":Lspsaga show_cursor_diagnostics<CR>")
keymap.set("n", "ne", ":Lspsaga diagnostic_jump_prev<CR>")
keymap.set("n", "pe", ":Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "pf", "<cmd>Lspsaga peek_definition<CR>") 

--NOTE:
--Ctrl O to jump back to the previous (older) location.
--Ctrl I same as Tab) to jump forward to the next (newer) location

-- window management
keymap.set("n", "<leader>vs", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>hs", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>es", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>xs", ":close<CR>") -- close current split window

keymap.set('n', '<leader>jj', ':normal 20j<CR>')
keymap.set('n', '<leader>kk', ':normal 20k<CR>')

