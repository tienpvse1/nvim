local ensure_installed = {
	"lua_ls",
	"ts_ls",
	"svelte",
	"graphql",

	-- debugger
	"js-debug-adapter",
}

local function config()
	require("mason").setup()
	require("mason-lspconfig").setup({
		ensure_installed = ensure_installed,
		automatic_installation = false,
	})
end

return {
	"williamboman/mason.nvim",
	config = config,
}
