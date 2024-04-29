return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        theme = 'center',
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.3,
          },
        },
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      extensions = {
        file_browser = {
          theme = "dropdown",
          initial_mode = "normal",
          hijack_netrw = true,
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension "file_browser"
   -- telescope.load_extension "ui-select"

    local keymap = vim.keymap

    vim.keymap.set("n", "fb", function()
      telescope.extensions.file_browser.file_browser({
        respect_gitignore = false,
        hidden = true,
        grouped = true,
        previewer = false,
        initial_mode = "normal",
        layout_config = { height = 30 }
      })
    end)

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>lb", "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    --keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>fp", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "<leader>tt", "<cmd>TodoTelescope<cr>", { desc = "Find all todos" })
    keymap.set("n", "<leader>ft", "<cmd>Telescope treesitter <cr>", { desc = "Find all todos" })
  end,
}
