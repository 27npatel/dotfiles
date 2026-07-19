return {
  "stevearc/dressing.nvim",
  lazy = false,
  opts = {
    select = {
      backend = { "telescope", "builtin" },
      builtin = {
        border = "rounded",
        relative = "editor",
      },
    },
  },
}
