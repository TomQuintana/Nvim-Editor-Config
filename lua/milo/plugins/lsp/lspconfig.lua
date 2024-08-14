return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local opts = { noremap = true, silent = true }
    --local on_attach = function(client, bufnr)

    -- Función on_attach para configurar keybindings específicos
    local on_attach = function(client, bufnr)
      -- Muestra las posibles code actions
      local buf_set_keymap = function(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
      end
      opts.buffer = bufnr

      -- set keybinds
      opts.desc = "Show LSP references"
      keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

      keymap.set("n", "fd", "<cmd>Lspsaga peek_definition<CR>", opts)

      opts.desc = "Go to declaration"
      keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

      opts.desc = "Show LSP definitions"
      keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>", opts) -- show lsp definitions

      keymap.set("n", "<leader>gf", ":Lspsaga finder<CR>")

      opts.desc = "Show LSP implementations"
      keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

      opts.desc = "Show LSP type definitions"
      keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

      opts.desc = "Show buffer diagnostics"
      keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

      opts.desc = "Show line diagnostics"
      keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

      opts.desc = "Go to previous diagnostic"
      keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

      opts.desc = "Go to next diagnostic"
      keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

      opts.desc = "Show documentation for what is under cursor"
      keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

      opts.desc = "Restart LSP"
      keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- configure html server
    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure typescript server with plugin
    lspconfig["tsserver"].setup({
      filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      cmd = { "typescript-language-server", "--stdio" },
      on_attach = function(client, bufnr)
        --   -- Disable the code actions capability
        client.server_capabilities.codeActionProvider = false
      end,
    })

    -- configure css server
    lspconfig["cssls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure tailwindcss server
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["clangd"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["emmet_ls"].setup({
          capabilities = capabilities,
          filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
        })

    -- configure prisma orm server
    -- lspconfig["prismals"].setup({
    --   capabilities = capabilities,
    --   on_attach = on_attach,
    -- })

    -- configure graphql language server
    -- lspconfig["graphql"].setup({
    --   capabilities = capabilities,
    --   on_attach = on_attach,
    --   filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
    -- })

    -- configure python server
    lspconfig["pyright"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- lspconfig.ruff_lsp.setup({
    --   on_attach = on_attach,
    --   capabilities = capabilities,
    --   init_options = {
    --     settings = {
    --       args = { "--line-length=120" },
    --     },
    --   },
    -- })
 -- configure python server
    -- lspconfig["ruff_lsp"].setup({
    --   capabilities = capabilities,
    --   on_attach = on_attach,
    -- })

    -- lspconfig["solidity"].setup({
    --   filetypes = { 'solidity', 'sol' },
    --   cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
    -- })
    --    require'lspconfig'.solidity_ls_nomicfoundation.setup({
    --      cmd = { 'nomicfoundation-solidity-language-server', '--stdio' },
    -- filetypes = { 'solidity' },
    -- root_dir = require("lspconfig.util").find_git_ancestor,
    -- single_file_support = true,
    --    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
}



-- return {
--   "neovim/nvim-lspconfig",
--   event = { "BufReadPre", "BufNewFile" },
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     { "antosha417/nvim-lsp-file-operations", config = true },
--     { "folke/neodev.nvim", opts = {} },
--   },
--   config = function()
--     -- import lspconfig plugin
--     local lspconfig = require("lspconfig")
--
--     -- import mason_lspconfig plugin
--     local mason_lspconfig = require("mason-lspconfig")
--
--     -- import cmp-nvim-lsp plugin
--     local cmp_nvim_lsp = require("cmp_nvim_lsp")
--
--     local keymap = vim.keymap -- for conciseness
--
--     vim.api.nvim_create_autocmd("LspAttach", {
--       group = vim.api.nvim_create_augroup("UserLspConfig", {}),
--       callback = function(ev)
--         -- Buffer local mappings.
--         -- See `:help vim.lsp.*` for documentation on any of the below functions
--         local opts = { buffer = ev.buf, silent = true }
--
--         -- set keybinds
--         opts.desc = "Show LSP references"
--         keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
--
--         opts.desc = "Go to declaration"
--         keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
--
--         opts.desc = "Show LSP definitions"
--         keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions
--
--         opts.desc = "Show LSP implementations"
--         keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations
--
--         opts.desc = "Show LSP type definitions"
--         keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions
--
--         opts.desc = "See available code actions"
--         keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection
--
--         opts.desc = "Smart rename"
--         keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename
--
--         opts.desc = "Show buffer diagnostics"
--         keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file
--
--         opts.desc = "Show line diagnostics"
--         keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line
--
--         opts.desc = "Go to previous diagnostic"
--         keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer
--
--         opts.desc = "Go to next diagnostic"
--         keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer
--
--         opts.desc = "Show documentation for what is under cursor"
--         keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor
--
--         opts.desc = "Restart LSP"
--         keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
--       end,
--     })
--
--     -- used to enable autocompletion (assign to every lsp server config)
--     local capabilities = cmp_nvim_lsp.default_capabilities()
--
--     -- Change the Diagnostic symbols in the sign column (gutter)
--     -- (not in youtube nvim video)
--     local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
--     for type, icon in pairs(signs) do
--       local hl = "DiagnosticSign" .. type
--       vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
--     end
--
--     local lspconfig = require'lspconfig'
--
--     local function show_code_actions_if_error()
--       local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line('.') - 1 })
--       local has_error = false
--
--       for _, diag in ipairs(diagnostics) do
--         if diag.severity == vim.diagnostic.severity.ERROR then
--           has_error = true
--           break
--         end
--       end
--
--       if has_error then
--         vim.lsp.buf.code_action()
--       end
--     end
--
--     mason_lspconfig.setup_handlers({
--       -- default handler for installed servers
--       function(server_name)
--         lspconfig[server_name].setup({
--           capabilities = capabilities,
--         })
--       end,
--       ["svelte"] = function()
--         -- configure svelte server
--         lspconfig["svelte"].setup({
--           capabilities = capabilities,
--           on_attach = function(client, bufnr)
--             vim.api.nvim_create_autocmd("BufWritePost", {
--               pattern = { "*.js", "*.ts" },
--               callback = function(ctx)
--                 -- Here use ctx.match instead of ctx.file
--                 client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
--               end,
--             })
--           end,
--         })
--       end,
--       ["graphql"] = function()
--         -- configure graphql language server
--         lspconfig["graphql"].setup({
--           capabilities = capabilities,
--           filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
--         })
--       end,
--       ["emmet_ls"] = function()
--         -- configure emmet language server
--         lspconfig["emmet_ls"].setup({
--           capabilities = capabilities,
--           filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
--         })
--       end,
-- -- configure python server
--     ["pyright"] = function()
--     lspconfig["pyright"].setup({
--       capabilities = capabilities,
--     })
--     end,
--     ["tsserver"] = function()
--         lspconfig['tsserver'].setup({
--           filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
--           cmd = { "typescript-language-server", "--stdio" },
--           -- on_attach = function(client, bufnr)
--           --   -- Disable the code actions capability
--           --   client.server_capabilities.codeActionProvider = false
--           -- end,
--           on_attach = function(client, bufnr)
--             -- Mapeo de la función a una tecla específica solo cuando `tsserver` está adjunto
--             vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua show_code_actions_if_error()<CR>', { noremap = true, silent = true })
--
--             -- Aquí puedes agregar otras configuraciones o funcionalidades
--           end,
--         })
--       end,
--       ["lua_ls"] = function()
--         -- configure lua server (with special settings)
--         lspconfig["lua_ls"].setup({
--           capabilities = capabilities,
--           settings = {
--             Lua = {
--               -- make the language server recognize "vim" global
--               diagnostics = {
--                 globals = { "vim" },
--               },
--               completion = {
--                 callSnippet = "Replace",
--               },
--             },
--           },
--         })
--       end,
--     })
--   end,
-- }
