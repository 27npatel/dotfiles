return {
  "folke/which-key.nvim",
  event = "VeryLazy",  -- Ensures it is loaded on the 'VeryLazy' event
  opts = {
    -- You can configure additional options here
    preset = "helix",  -- Sets the preset to "helix" style
    win = {
      wo = {
        winblend = 100
      }
    },
  },
  keys = {
    {
      "<leader>?",  -- The keybinding you want to use
      function()
        require("which-key").show({
          global = false,  -- Local keymaps only
          window = {
            border = "single",  -- Window border style
            winblend = 100,  -- Transparency level of the popup
          },
        })
      end,
      desc = "Buffer Local Keymaps (which-key)",  -- Description for the keybinding
    },
  },
}
