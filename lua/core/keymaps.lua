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
map("n", "<leader>so", ":BufferLineCloseOthers<cr>", opt) -- close others
map("n", "<leader>h", "<C-w>h", opt)
map("n", "<leader>j", "<C-w>j", opt)
map("n", "<leader>k", "<C-w>k", opt)
map("n", "<leader>l", "<C-w>l", opt)
-- bufferline
-- 左右Tab切换
map("n", "<leader>t", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>u", ":BufferLineCycleNext<CR>", opt)


-- Lua
wk.register({
    f = {
        name = "telescope", -- optional group name
        f = {"<cmd>Telescope find_files<cr>", "搜索文件"}, -- create a binding with label
        g = {"<cmd>Telescope live_grep<cr>", "搜索字符串"}, -- create a binding with label
        b = {"<cmd>Telescope buffers<cr>", "搜索缓冲区"}
    },
    e = {"<cmd>NvimTreeFocus<cr>", "文件树"},
    c = {
        a = {"lua vim.lsp.buf.code_action()<CR>", "代码操作"},
    },
    r ={
        n = {"<cmd>lua vim.lsp.buf.rename()<CR>", "重命名"},
    },
    x = {
        name = "trouble",
        x = {"<cmd>TroubleToggle<cr>", "Trouble"},
        w = {"<cmd>TroubleToggle workspace_diagnostics<cr>", "工作区问题"},
        d = {"<cmd>TroubleToggle document_diagnostics<cr>", "文档问题"},
        q = {"<cmd>TroubleToggle quickfix<cr>", "快速修复"},
        l = {"<cmd>TroubleToggle loclist<cr>", "Trouble LocList"},
        r = {"<cmd>TroubleToggle lsp_references<cr>", "刷新问题"},
    },
    h = {"<C-w>h", "左窗口"},
    j = {"<C-w>j", "下窗口"},
    k = {"<C-w>k", "上窗口"},
    l = {"<C-w>l", "右窗口"},
}, {prefix = "<leader>"})

wk.register({
     -- lsp 按键
     g = {
        d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "定义"},
        h = {"<cmd>lua vim.lsp.buf.hover()<cr>", "悬停"},
        D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "声明"},
        i = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "实现"},
        r = {"<cmd>lua vim.lsp.buf.references()<cr>", "引用"},
        o = {"<cmd>lua vim.diagnostic.open_float()<cr>", "文档符号"},
        p = {"<cmd>lua vim.diagnostic.goto_prev()<cr>", "上一个"},
        n = {"<cmd>lua vim.diagnostic.goto_next()<cr>", "下一个"},
        f = {"<cmd>lua vim.lsp.buf.formatting()<cr>", "格式化"},
     }
},{})
