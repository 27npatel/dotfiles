return {
  {
    "williamboman/mason.nvim",
    version = "^1.0.0",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "^1.0.0",
    config = function()
      config = function()
        require("mason-lspconfig").setup {
          ensure_installed = { "lua_ls", "ts_ls", "pyright", "html", "cssls", "clangd", "jdtls" },
        }
      end
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("html")
      vim.lsp.enable("cssls")
      vim.lsp.enable("clangd")
      vim.lsp.enable("jdtls")
    end
  }
}
