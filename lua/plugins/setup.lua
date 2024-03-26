local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath);

local lspConfig = require('plugins/lsp')
local cmpConfig = require('plugins/cmp')
local telescoptConfig = require('plugins/telescope')
local formatter = require('plugins/formatter')
local nvimtree = require('plugins/nvim-tree')
local trouble = require('plugins/trouble')
local notify = require('plugins/notify')
local text_edit = require('plugins/text-edit')
local text_obj = require('plugins/text-obj')
local treesitter = require('plugins/treesitter')
local dashboard = require('plugins/dashboard')
local gitsigns = require('plugins/gitsigns')

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
      require('onedark').setup {
        style="cool"
      }
      require('onedark').load()
    end
  },
  -- 状态栏
  {
    'nvim-lualine/lualine.nvim', 
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function() require('lualine').setup() end
  }, 
  -- buffer 行
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',config = function() require("bufferline").setup() end},
  -- 语法高亮
  treesitter,
  -- 文件管理相关
  telescoptConfig, -- 快捷键提示
  {"folke/which-key.nvim", event = "VeryLazy"},

  -- { "folke/neoconf.nvim", cmd = "Neoconf" }, -- 全局配置和启动配置文件

  {
    "mhartington/formatter.nvim",
    config = function() require("formatter").setup() end
  },
  -- lsp, 
  lspConfig,
  trouble,

  -- cmp
  cmpConfig,

  -- gcc和gc注释
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
  },


  -- 格式化
  formatter,

  -- 目录树
  nvimtree,

  notify,
  text_edit,
  text_obj,
  dashboard,
  gitsigns
}


require("lazy").setup(plugins)

