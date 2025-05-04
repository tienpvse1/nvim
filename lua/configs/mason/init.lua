local M = {}

local ensure_installed = {
	"stylua",
	"lua_ls",
	"ts_ls",
	"svelte",
	"graphql",
}

M.config = function()
	require("mason").setup()
	require("mason-lspconfig").setup({
		ensure_installed = ensure_installed
	})
end


return M
