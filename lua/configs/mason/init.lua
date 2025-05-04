local M = {}

local ensure_installed = {
	"lua_ls",
	"ts_ls",
	"svelte",
	"graphql",

	-- debugger
	"js-debug-adapter",
}

M.config = function()
	require("mason").setup()
	require("mason-lspconfig").setup({
		ensure_installed = ensure_installed,
	})
end

return M
