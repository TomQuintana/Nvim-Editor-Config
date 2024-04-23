vim.g.mapleader = " "

local keymap = vim.keymap

-- general keys
keymap.set('n', '<leader>w', ':w<CR>',{noremap = true})
keymap.set('n', '<leader>q', ':q<CR>',{noremap = true})
keymap.set('n', '<leader>wq', ':wq<CR>',{noremap = true})
keymap.set('n', '<leader>fw', ':w!<CR>',{noremap = true})
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })


-- window management
keymap.set("n", "<leader>vs", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>hs", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>es", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>xs", ":close<CR>") -- close current split window

keymap.set('n', '<leader>jj', ':normal 20j<CR>')
keymap.set('n', '<leader>kk', ':normal 20k<CR>')

