return {
  {
    "smjonas/inc-rename.nvim",
    opts = {},
    config = function()
      require("inc_rename").setup {
        -- input_buffer_type = "dressing",
      }
      vim.keymap.set("n", "<leader>rn", function()
        return ":IncRename " .. vim.fn.expand("<cword>")
      end, { expr = true })
    end,
  },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      {
        "<leader>r",
        function()
          require("refactoring").select_refactor({
            show_success_message = true,
          })
        end,
        mode = "v",
        noremap = true,
        silent = true,
        -- removed expr = true (this was wrong)
      },
    },
    config = function()
      -- ensure plenary is loaded first (important for older setups)
      require("plenary")

      require("refactoring").setup({})
    end,
  },
}
