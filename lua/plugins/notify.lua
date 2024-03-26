return {
	'mrded/nvim-lsp-notify',
	dependencies = {
		"rcarriga/nvim-notify",
	},
  event= 'VeryLazy',
	config = function ()
		local notify = require("notify")
		require("lsp-notify").setup({
			notify=notify
		})
		vim.notify = notify
	end
}
