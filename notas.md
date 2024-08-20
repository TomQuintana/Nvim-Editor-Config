# Lazy Vim

### Recuperar un archico que se danio
https://dev.to/vonheikemen/lazynvim-how-to-revert-a-plugin-back-to-a-previous-version-1pdp

[Config lazy vim](https://www.youtube.com/watch?v=6mxWayq-s9I&t=20s) 
[Repo de Ejemplo](https://github.com/josean-dev/dev-environment-files) 
[Repo de Lazy](https://github.com/folke/lazy.nvim) 

## Estructura
|-- lua/
|   |-- milo/ 
|       |-- core/
|           |-- colorschema.lua
|           |-- keymaps.lua
|           |-- options.lua
|       |-- plugs/
|           |-- lsp/
|           |-- other_plugs
|       |--laztylua # carga todos los plugs
|-- plugin/
|-- init.lua



## Config Lazy
### Se genera el archivo lazy.lua y contendra lo siguiente

#### Se instala Laza - I
[Instalaccion](https://github.com/folke/lazy.nvim#-installation) 

```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
```

#### Se llama a lazy.nvim para configurar los plugs que se quieren cargan al inicio - II
```lua
require("lazy").setup({ { import = "josean.plugins" }, { import = "josean.plugins.lsp" } }, {
  install = {
    colorscheme = { "nightfly" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
```

### Ahora con el comando :lazy
- con este comando se podra ver una interfaz grafica de lazy

### Comando :checkhealth lazy
- comando para ver el estado de lazy

### Recargar nvim con los plug de lazy sin salir de nvim
`Lazy load <nombre del plugin>`

### Ejemplo de carga de archivo cmp
```lua
return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
  },
  config = function()
    local cmp = require("cmp")

    local luasnip = require("luasnip")

    local lspkind = require("lspkind")

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),
      -- configure lspkind for vs-code like pictograms in completion menu
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
    })
  end,
}
```

### Comandos event
`event = "InsertEnter"` - este comando lo que hara sea que cuando se llame al modo insertar recien en ese momento se va a cargar el plugin de cmp
`keys = {
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },` - este comando espera a que la convinacion de teclas se active para cargar el plugin
`event = { "BufReadPre", "BufNewFile" },` - este evento se cargara cuando se ingrese o se genere un nuevo archivo

### Ver los comandos de enter
:h InsertEnter - te muestra que hace el comando

### Ver todos los eventos
: h events

### Mason - is for manage lsp server, linters and daps
### Lsp - es paara manejar los language server
### "hrsh7th/cmp-nvim-lsp" - utilizando el lsp server este plugin genera autocompletion
### "WhoIsSethDaniel/mason-tool-installer.nvim" - es para auto instalar los linters, formatting and dap

## Lsp saga config
```lua

return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional but recommended for better UI rendering
    'nvim-tree/nvim-web-devicons',     -- optional for file icons
  },
  config = function()
    local lspsaga = require('lspsaga')

    lspsaga.setup({
      ui = {
        enable = false, -- Disables the custom UI provided by lspsaga
        sign = false,   -- Disables signs in the UI
        -- code_action = 'your icon' -- Uncomment and set an icon if you want custom icons for code actions
      },
      ignore = {
        clients = {"tsserver"}, -- Ignores the tsserver LSP client
        ft = {},                -- Add filetypes to ignore if necessary
        actions_without_kind = false, -- Set to true if you want to ignore code actions without a specific kind
      }
    })
  end,
}
```
