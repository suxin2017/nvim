local wk = require("which-key")

vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

local opt = {
	noremap = true,
	silent = true,
}
-- ctrl + /
map("n", "<C-_>", "gcc", { noremap = false })
map("v", "<C-_>", "gcc", { noremap = false })

-- Lua
wk.register({
	f = {
		f = { "<cmd>Telescope find_files<cr>", "搜索文件" }, -- create a binding with label
		g = { "<cmd>Telescope live_grep<cr>", "搜索字符串" }, -- create a binding with label
		b = { "<cmd>Telescope buffers<cr>", "搜索缓冲区" },
		c = { "<cmd>Format<cr>", "格式化" },
	},
	e = { "<cmd>NvimTreeFocus<cr>", "文件树" },
	c = {
		a = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "代码操作" },
	},
	r = {
		n = { "<cmd>lua vim.lsp.buf.rename()<CR>", "重命名" },
	},
	x = {
		name = "trouble",
		x = { "<cmd>TroubleToggle<cr>", "Trouble面板" },
		w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "工作区问题" },
		d = { "<cmd>TroubleToggle document_diagnostics<cr>", "文档问题" },
		q = { "<cmd>TroubleToggle quickfix<cr>", "快速修复" },
		l = { "<cmd>TroubleToggle loclist<cr>", "Trouble LocList" },
		r = { "<cmd>TroubleToggle lsp_references<cr>", "刷新问题" },
	},
  -- search
	s = {
		n = { ":set hlsearch!<cr>", "高亮开关" },
	},
	-- window
	w = {
		h = { "<C-w>h", "左窗口" },
		j = { "<C-w>j", "下窗口" },
		k = { "<C-w>k", "上窗口" },
		l = { "<C-w>l", "右窗口" },
		q = { "<C-w>q", "关闭窗" },
		r = { ":BufferLineCyclePrev<cr>", "前一个bufferline" },
		u = { ":BufferLineCycleNext<cr>", "后一个bufferline" },
		["so"] = { ":BufferLineCloseOthers<cr>", "关闭其他bufferline" },
	},
	-- goto
	g = {
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "定义" },
		h = { "<cmd>lua vim.lsp.buf.hover()<cr>", "悬停" },
		D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "声明" },
		i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "实现" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "引用" },
		o = { "<cmd>lua vim.diagnostic.open_float()<cr>", "文档符号" },
		p = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "上一个" },
		n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "下一个" },
	},
}, { prefix = "<leader>" })

