return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	-- or                              , branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
  config = function ()
    
    local telescope = require "telescope"

    telescope.setup({})

    telescope.load_extension("fzf")
  end
}
