return {
	{
		"rcarriga/nvim-notify",
		lazy = true,
		config = function()
			local notify = require("notify")
			vim.notify = notify
		end,
	},
	{
		"j-hui/fidget.nvim",
    event = "VeryLazy",
    config = function ()
      require("fidget").setup({})
    end
	},
}
