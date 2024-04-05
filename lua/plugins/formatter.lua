return {
	"mhartington/formatter.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("formatter").setup({
			logging = true,
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
				},
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
        json = {
          require("formatter.filetypes.json").prettier
        }
			},
		})
	end,
}
