return {
  "williamboman/mason-lspconfig.nvim",
  event = "InsertEnter",
  dependencies = {"williamboman/mason.nvim", "neovim/nvim-lspconfig", { "folke/neodev.nvim", opts = {} }},

  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers {
      -- The first entry (without a key) will be the default handler
      -- and will be called for each installed server that doesn't have
      -- a dedicated handler.
      function (server_name) -- default handler (optional)
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("lspconfig")[server_name].setup {
          capabilities = capabilities
        }
      end
    }
  end
}
