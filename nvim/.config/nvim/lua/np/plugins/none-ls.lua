return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Python formatters
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.diagnostics.pylint,

        -- JavaScript, HTML, and CSS formatters
        null_ls.builtins.formatting.prettier,

        -- Java formatters & linters
        null_ls.builtins.formatting.google_java_format,
        null_ls.builtins.diagnostics.checkstyle,

        -- C/C++ formatters & linters
        null_ls.builtins.formatting.clang_format,

        -- JavaScript/TypeScript linting
        require("none-ls.code_actions.eslint"),
        require("none-ls.diagnostics.eslint"),
      },
    })
  end
}
