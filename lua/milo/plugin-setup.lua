-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
augroup end
]])


-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  -- Theme
  use('mofiqul/vscode.nvim')
  use('maxmx03/dracula.nvim')
  use('tomasiser/vim-code-dark')
  use('folke/tokyonight.nvim')
  use('tiyn/tccs.nvim')
  use('gmr458/dark_modern.nvim')
  use('sainnhe/gruvbox-material')
  use { "catppuccin/nvim", as = "catppuccin" }

  -- rainbow brackets
--  use("HiPhish/rainbow-delimiters.nvim")

  -- Indentantion for Python
  --use('smbl64/vim-black-macchiato')

  -- Tmux for nvim
  use("christoomey/vim-tmux-navigator")

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
use('windwp/nvim-ts-autotag')
  -- Nerd tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*"}

  -- Tresitter 
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Bracket hightlight
  use('p00f/nvim-ts-rainbow')

  -- Generate indent line
  use("lukas-reineke/indent-blankline.nvim")


  -- Todo Comments
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
    end
  }

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- Git merge conflict
  use ('akinsho/git-conflict.nvim')

  -- Markdown preview
  use("ellisonleao/glow.nvim")


  -- Trouble for toggle
  use{"folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons"
  }

  -- Surround
  use('tpope/vim-surround')

  -- Git plug
  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

   use({
     "iamcco/markdown-preview.nvim",
     run = function() vim.fn["mkdp#util#install"]() end,
   })

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  --use ('davidhalter/jedi-vim')

  -- rainbow
  use('HiPhish/rainbow-delimiters.nvim')

  -- Git signs
  use("lewis6991/gitsigns.nvim")

  -- Test
  use('rbong/vim-flog')

  if packer_bootstrap then
    require("packer").sync()
  end
end)
