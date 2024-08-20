
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local lspconfig = require("lspconfig")

    local mason_lspconfig = require("mason-lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local capabilities = cmp_nvim_lsp.default_capabilities()

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["lua_ls"] = function()
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              -- make the language server recognize "vim" global
              diagnostics = {
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        })
      end,
      ["pyright"] = function()
        lspconfig["pyright"].setup({
          capabilities = capabilities,
        })
      end,
      ["pylsp"] = function()
        lspconfig["pylsp"].setup({
          capabilities = capabilities,
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  ignore = { "W391" },
                  maxLineLength = 100,
                },
                black = { enabled = true },
                ruffle = { enabled = true },
              },
            },
          },
          on_attach = function(client, bufnr)
            -- Mapeo de teclas para acciones de código
            local bufopts = { noremap=true, silent=true, buffer=bufnr }

            -- Mapeo para mostrar acciones de código
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
          end
        })
      end,
    })
  end,
}

