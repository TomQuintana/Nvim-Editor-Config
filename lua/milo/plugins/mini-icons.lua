return {
	-- mini.nvim
	{ "echasnovski/mini.nvim", version = false },

	-- Devicons para soporte de íconos
	-- { "nvim-tree/nvim-web-devicons" },
	require("mini.icons").setup({
		-- icons = {
		-- 	file = "", -- Asegúrate de que estos íconos sean visibles en tu terminal
		-- 	folder = {
		-- 		closed = "",
		-- 		open = "",
		-- 	},
		-- 	diagnostics = {
		-- 		error = "",
		-- 		warning = "",
		-- 		info = "",
		-- 		hint = "",
		-- 	},
		-- },
	}),
}
