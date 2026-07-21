return {
  "nvim-telescope/telescope.nvim",
  branch = "master", -- using master to fix issues with deprecated to definition warnings
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "andrew-george/telescope-themes",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local builtin = require("telescope.builtin")

    telescope.load_extension("fzf")
    telescope.load_extension("themes")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
          },
        },
      },
      extensions = {
        themes = {
          enable_previewer = true,
          enable_live_preview = true,
          persist = {
            enabled = true,
            path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
          },
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>ff", function()
      builtin.find_files({
        hidden = true,
      })
    end, {
      desc = "Find files (including hidden)",
    })

    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
      desc = "Search text in project",
    })

    vim.keymap.set("n", "<leader>ths", "<cmd>Telescope themes<CR>", {
      noremap = true,
      silent = true,
      desc = "Theme Switcher",
    })
  end,
}

