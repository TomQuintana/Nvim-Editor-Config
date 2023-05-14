-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

null_ls.setup({
  sources = {
    formatting.prettier,
    diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})',
      -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
      condition = function(utils)
        return utils.root_has_file(".eslintrc.js", ".eslintrc.cjs", ".eslintrc.json", ".eslintrc") -- change file extension if you use something else
      end,
    }),
  }
})
