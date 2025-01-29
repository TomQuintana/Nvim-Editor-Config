return {
	"epwalsh/pomo.nvim",
	version = "*", -- Recommended, use latest release instead of latest commit
	lazy = true,
	cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
	opts = {
		-- Opciones adicionales pueden ir aquí
	},
	config = function()
		-- Función para mostrar el popup
		local function show_popup(message)
			local buf = vim.api.nvim_create_buf(false, true)
			vim.api.nvim_buf_set_lines(buf, 0, -1, false, { message })
			local width = vim.o.columns
			local height = vim.o.lines
			vim.api.nvim_open_win(buf, true, {
				relative = "editor",
				width = math.floor(width * 0.5),
				height = 3,
				row = math.floor(height * 0.5),
				col = math.floor(width * 0.25),
				style = "minimal",
				border = "rounded",
			})
		end

		-- Configuración de pomo.nvim
		require("pomo").setup({
			sessions = {
				pomodoro = {
					{ name = "Work", duration = "25m" },
					{ name = "Short Break", duration = "5m" },
					{ name = "Work", duration = "25m" },
					{ name = "Short Break", duration = "5m" },
					{ name = "Work", duration = "25m" },
					{ name = "Long Break", duration = "15m" },
				},
			},
			on_work_complete = function()
				show_popup("¡Tiempo de trabajo terminado! 🎉")
			end,
			on_break_complete = function()
				show_popup("¡El descanso terminó! 🌟")
			end,
		})
	end,
}


