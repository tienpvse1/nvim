local navbuddy = require("nvim-navbuddy")
vim.lsp.config("ts_ls", {
	on_attach = function(client, bufnr)
		navbuddy.attach(client, bufnr)
	end,
})
vim.lsp.enable("ts_ls")
