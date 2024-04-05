return {
	"williamboman/mason-lspconfig.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"nvimdev/lspsaga.nvim",
		"neovim/nvim-lspconfig",
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure = {
				"tailwindcss-language-servers",
				"css-lsps",
				"eslint-lspt",
				"json-lsps",
				"lua-language-servers",
				"rust-analyzerr",
				"typescript-language-server",
        "emmet-language-server",
			},
		})
		require("mason-lspconfig").setup_handlers({
			-- The first entry (without a key) will be the default handler
			-- and will be called for each installed server that doesn't have
			-- a dedicated handler.
			function(server_name) -- default handler (optional)
				local capabilities = require("cmp_nvim_lsp").default_capabilities()
				require("lspconfig")[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
		require("lspsaga").setup({})
	end,
}
