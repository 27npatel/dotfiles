return {
  -- NOTE: anysphere
  {
    "dapovich/anysphere.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "dapovich/greenlight.nvim" },
    config = function()
      require("anysphere").setup({
        transparent = true,
        italics = true,

        colors = {
          white = "#ffffff",
          pink = "#ec6075",
        },

        themes = function(colors)
          return {
            Normal = { bg = "none" },
            NormalFloat = { bg = "none" },
            SignColumn = { bg = "none" },
            EndOfBuffer = { bg = "none" },
            LineNr = { bg = "none" },
            CursorLineNr = { bg = "none" },
            StatusLine = { bg = "none" },
            StatusLineNC = { bg = "none" },
            ["@lsp.type.keyword"] = { link = "@keyword" },
          }
        end,
      })
    end,
  },
  -- NOTE: Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,

        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},

        transparent = true,
        dimInactive = false,
        terminalColors = true,

        colors = {
          palette = {},
          theme = {
            wave = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },

        overrides = function(colors)
          return {}
        end,

        theme = "wave",

        background = {
          dark = "wave",
          light = "lotus",
        },
      })

    end,
  },
  -- NOTE : tokyonight
  {
    "folke/tokyonight.nvim",
    name = "folkeTokyonight",
    -- priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = true,

        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end,
  },
  -- NOTE: Monokai
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
      })
    end
  },
  -- NOTE: Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true
      })
    end
  }
}

