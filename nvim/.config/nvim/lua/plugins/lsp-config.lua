return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      vim.diagnostic.config({
          virtual_text = true,
          signs = true,
          underline = true,
          update_in_insert = false,
          severity_sort = true,
      })

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca',  vim.lsp.buf.code_action, {})
    end
  },
}
