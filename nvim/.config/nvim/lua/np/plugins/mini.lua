return {
  { 'nvim-mini/mini.nvim', version = false },
  -- File explorer
  {
    'nvim-mini/mini.files',
    version = false,
    config = function()
      local miniFiles = require('mini.files')

      miniFiles.setup({
        mappings = {
          go_in = "<CR>",
          go_in_plus = "L",
          go_out = "_",
          go_out_plus = "H",
        },
      })

      vim.keymap.set("n", "<leader>ee", function()
        miniFiles.open()
      end, { desc = "Open mini file explorer" })

      vim.keymap.set("n", "<leader>ef", function()
        miniFiles.open(vim.api.nvim_buf_get_name(0), false)
        miniFiles.reveal_cwd()
      end, { desc = "Open current file location in mini.files" })
    end,
  },
  -- Surround
  {
    'nvim-mini/mini.surround',
    version = false,
    opts = {
      custom_surroundings = nil,
      -- INFO:
      -- saiw surround with no whitespace
      -- saw surround with whitespace
      mappings = {
        add = 'sa',
        delete = 'ds',
        find = 'sf',
        find_left = 'sF',
        highlight = 'sh',
        replace = 'sr',
        update_n_lines = 'sn',
        suffix_last = 'l',
        suffix_next = 'n',
      },
    },
  },
  -- Remove trailing whitespace
  {
    'nvim-mini/mini.trailspace',
    version = false,
    config = function()
      local miniTrailspace = require("mini.trailspace")

      miniTrailspace.setup({
        only_in_normal_buffers = true,
      })

      vim.keymap.set("n", "<leader>cw", function()
        miniTrailspace.trim()
      end, { desc = "Erase whitespace" })

      local group = vim.api.nvim_create_augroup(
        "MiniTrailspace",
        { clear = true }
      )

      vim.api.nvim_create_autocmd("CursorMoved", {
        group = group,
        pattern = "*",
        callback = function()
          miniTrailspace.unhighlight()
        end,
      })
    end,
  },
  -- Split & join
  {
    'nvim-mini/mini.splitjoin',
    version = false,
    config = function()
      local miniSplitJoin = require("mini.splitjoin")

      miniSplitJoin.setup({
        mappings = {
          toggle = "",
        },
      })

      vim.keymap.set({ "n", "x" }, "sj", function()
        miniSplitJoin.join()
      end, { desc = "Join arguments" })

      vim.keymap.set({ "n", "x" }, "ss", function()
        miniSplitJoin.split()
      end, { desc = "Split arguments" })
    end,
  },
}

