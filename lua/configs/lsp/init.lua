return {
	"neovim/nvim-lspconfig",
	dependencies = require("configs.lsp.dependencies"),
	config = function()
		require("configs.lsp.lua_ls")
		require("configs.lsp.ts_ls")
		require("configs.lsp.svelte")
		require("configs.lsp.json")
		require("configs.lsp.kulala")
	end,
}
