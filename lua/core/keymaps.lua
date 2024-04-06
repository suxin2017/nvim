local wk = require("which-key")

vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap

-- ctrl + /
map("n", "<C-_>", "gcc", { noremap = false })
map("v", "<C-_>", "gcc", { noremap = false })

wk.register({
	-- goto
	g = {
		d = { "<cmd>Lspsaga goto_definition<cr>", "定义" },
		h = { "<cmd>Lspsaga hover_doc<cr>", "悬停" },
		D = { "<cmd>Lspsaga peek_definition<cr>", "声明" },
		i = { "<cmd>Lspsaga finder imp<cr>", "实现" },
		r = { "<cmd>Lspsaga finder ref<cr>", "引用" },
		o = { "<cmd>Lspsaga outline<cr>", "文档符号" },
		p = { "<cmd>l ua vim.diagnostic.goto_prev()<cr>", "上一个" },
		n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "下一个" },
	},
})
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
		a = { "<cmd>Lspsaga code_action<CR>", "代码操作" },
    r = { "<cmd>Lspsaga rename<CR>","rename"}
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
		f = { "<cmd>w<cr>", "save file" },
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
}, { prefix = "<leader>" })
