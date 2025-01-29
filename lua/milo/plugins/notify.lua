return {
  "rcarriga/nvim-notify",
  config = function()
    -- Configuración de nvim-notify
    require("notify").setup({
      stages = "fade",
      timeout = 100,
      time = 100,
      --render_timeout = 100,
      render = "minimal",
      background_colour = "#000000",
      max_width = 60,
      max_height = 30,
    })
  end,
}


