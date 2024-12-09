return {
  -- otros plugins
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 14, -- Tamaño inicial
        open_mapping = [[<C-t>]], -- Tecla para abrir/cerrar la terminal
        hide_numbers = true, -- Ocultar números de línea en la terminal
        shade_terminals = true, -- Hacer que las terminales sean más opacas
        direction = "horizontal", -- Cambiar a 'horizontal', 'vertical', o 'float'
        float_opts = {
          border = "curved", -- Borde curvo
        },
      })

      -- Mapeos adicionales
      local Terminal = require("toggleterm.terminal").Terminal

      -- Maximizar la terminal flotante
      vim.keymap.set("n", "<leader>tm", function()
        -- Abre la terminal flotante y ajusta su tamaño al máximo
        local Terminal = require("toggleterm.terminal").Terminal
        local term = Terminal:new({
          direction = "float",
          size = 100,  -- Establecer el tamaño de la terminal para que ocupe todo el ancho
        })
        term:toggle()  -- Alterna la terminal
      end, { desc = "Maximizar terminal flotante" })

      -- Nueva terminal horizontal
      --vim.keymap.set('n', '<leader>tn', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })

      -- Nueva terminal vertical
      vim.keymap.set("n", "<leader>tv", function()
        Terminal:new({ direction = "vertical", size = 40 }):toggle()
      end, { desc = "Abrir nueva terminal vertical" })

      -- Cerrar todas las terminales
      vim.keymap.set("n", "<leader>tc", function()
        vim.cmd("ToggleTermToggleAll")
      end, { desc = "Cerrar todas las terminales" })
    end,
  },
}

