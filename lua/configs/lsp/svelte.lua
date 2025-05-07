local navbuddy = require("nvim-navbuddy")

vim.lsp.config("svelte", {
	on_attach = function(client, bufnr)
		navbuddy.attach(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = { "*.js", "*.ts" },
			callback = function(ctx)
				client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
			end,
		})
	end,
})

vim.lsp.enable("svelte")
