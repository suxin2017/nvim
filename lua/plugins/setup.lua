local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local lspConfig = require("plugins/lsp")
local cmpConfig = require("plugins/cmp")
local telescoptConfig = require("plugins/telescope")
local formatter = require("plugins/formatter")
local nvimtree = require("plugins/nvim-tree")
local trouble = require("plugins/trouble")
local notify = require("plugins/notify")
local text_edit = require("plugins/text-edit")
local text_obj = require("plugins/text-obj")
local treesitter = require("plugins/treesitter")
local dashboard = require("plugins/dashboard")
local git = require("plugins/git")
local text_rain = require("plugins/text-rain")
local flash = require("plugins/flash")
local indent = require("plugins/indent")

local plugins = {
	-- 主题
	-- {
	--     "folke/tokyonight.nvim",
	--     lazy = false,
	--     priority = 1000,
	--     opts = {},
	--   },
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "cool",
			})
			require("onedark").load()
		end,
	},
	-- 状态栏
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({})
		end,
	},
	-- buffer 行
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup()
		end,
	},
	-- 语法高亮
	treesitter,
	telescoptConfig, -- 快捷键提示
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opt = {
			disable = {
				buftypes = {},
				filetypes = {},
			},
		},
	},

	-- lsp,
	lspConfig,
	trouble,

	-- cmp
	cmpConfig,

	-- 格式化
	formatter,

	-- 目录树
	nvimtree,

	notify,
	text_edit,
	text_obj,
	dashboard,
	git,

	-- 一个可以让文字下雨的插件
	text_rain,
	indent,
  flash,
}

require("lazy").setup(plugins)
