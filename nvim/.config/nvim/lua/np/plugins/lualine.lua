return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    local colors = {
      fg = "#d6d6dd",
      bg = "#181818",
      white = "#eeeeee",
      gray = "#b3b3b3",
      gray2 = "#5b5b5b",
      gray3 = "#6d6d6d",
      darkblue = "#163761",
      yellow = "#ebc88d",
      magenta = "#e394dc",
      softblue = "#94c1fa",
      softblue2 = "#81a2be",
      orange = "#efb080",
      cyan = "#83d6c5",
      purple = "#aaa0fa",
      red = "#f75f5f",
      pink = "#ffc0cb",
      darkpink = "#ff008c",
      softpink = "#ce95b8",
      peanut = "#f5d5a4",
      darkgray = "#4b5261",
      palevioletred2 = "#ee799f",
      lightgray = "#9ca3b2",
      lightgray2 = "#939393",
      dawnblue = "#26292f",
      green = "#98c379",
      aqua = "#61afef",
    }

    local lualine_theme = {
      normal = {
        a = { fg = colors.bg, bg = colors.aqua, gui = "bold" },
        b = { fg = colors.fg, bg = colors.dawnblue },
        c = { fg = colors.fg, bg = "NONE" },
      },

      insert = {
        a = { fg = colors.bg, bg = colors.palevioletred2, gui = "bold" },
        b = { fg = colors.fg, bg = colors.dawnblue },
        c = { fg = colors.fg, bg = "NONE" },
      },

      visual = {
        a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
        b = { fg = colors.fg, bg = colors.dawnblue },
        c = { fg = colors.fg, bg = "NONE" },
      },

      replace = {
        a = { fg = colors.bg, bg = colors.red, gui = "bold" },
        b = { fg = colors.fg, bg = colors.dawnblue },
        c = { fg = colors.fg, bg = "NONE" },
      },

      command = {
        a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
        b = { fg = colors.fg, bg = colors.dawnblue },
        c = { fg = colors.fg, bg = "NONE" },
      },

      inactive = {
        a = { fg = colors.gray3, bg = "NONE" },
        b = { fg = colors.gray3, bg = "NONE" },
        c = { fg = colors.gray3, bg = "NONE" },
      },
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = lualine_theme,

        component_separators = { 
          left = '',
          right = '',
        },

        section_separators = { 
          left = '',
          right = '',
        },

        globalstatus = true,
      },

      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },

      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },

      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}

