return {
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			vim.g.indent_blankline_filetype_exclude = {
				"dashboard",
				"TelescopePrompt",
				"TelescopeResults",
				"mason",
				"lspinfo",
				"help",
				"terminal",
				"lazy",
				"",
			}
		end,
		event = "InsertEnter",
		main = "ibl",
		opts = {},
	}
