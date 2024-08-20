return {
  "nvimdev/lspsaga.nvim",
  config = function() 
    require('lspsaga').setup({
      diagnostic = {
        -- Habilitar la visualización de signos en la columna de estado
      },
      ui = {
        code_action = '',  -- Make sure to replace 'your icon' with the actual icon you want to use
      }
    })
  end,
}

