local navbuddy = require("nvim-navbuddy")

vim.lsp.config("svelte", {
	on_attach = function(client, bufnr)
		navbuddy.attach(client, bufnr)
	end,
})
vim.lsp.enable("svelte")
