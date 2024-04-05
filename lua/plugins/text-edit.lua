-- 文本编辑相关的插件

return {
	-- 包裹函数
	{
		"echasnovski/mini.surround",
		event = { "BufReadPre", "BufNewFile" },
		version = "*",
		config = function()
			require("mini.surround").setup()
		end,
	},
	-- gcc和gc注释
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			-- add any options here
		},
	},
	--  快速转跳
	-- {
	--   "ggandor/leap.nvim",
	--   config = function(_, opts)
	--     local leap = require("leap")
	--     for k, v in pairs(opts) do
	--       leap.opts[k] = v
	--     end
	--     leap.add_default_mappings(true)
	--     vim.keymap.del({ "x", "o" }, "x")
	--     vim.keymap.del({ "x", "o" }, "X")
	--     vim.keymap.set("n", "s", function()
	--       require("leap").leap({ target_windows = { vim.api.nvim_get_current_win() } })
	--     end)
	--   end,
	-- },
	-- function 文本对象

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equalent to setup({}) function
	},
	{ "mg979/vim-visual-multi", event = { "BufReadPre", "BufNewFile" } },
}
