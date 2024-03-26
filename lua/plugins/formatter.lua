return {
  "mhartington/formatter.nvim",
  event = "InsertEnter",
  config = function() 

    require("formatter").setup({
      filetype = {
        typescriptreact = {
          require("formatter.filetypes.typescriptreact").prettier,
        },
        typescript = {
          require("formatter.filetypes.typescript").prettier,
        },
        javascript = {
          require("formatter.filetypes.javascript").prettier,
        },
        javascriptreact = {
          require("formatter.filetypes.javascriptreact").prettier,
        },
        rust = {
          require("formatter.filetypes.rust").rustfmt, 
        }
      }
    })

  end
}
