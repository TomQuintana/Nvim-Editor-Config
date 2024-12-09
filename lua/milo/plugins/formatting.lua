return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- para deshabilitar, comenta esto
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				-- markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
			},
		})

		-- Activa el formateo al guardar solo para archivos Python
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.py",
			callback = function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 1000,
				})
			end,
			desc = "Formato al guardar solo para archivos .py",
		})

		-- Tecla para formatear manualmente
		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
