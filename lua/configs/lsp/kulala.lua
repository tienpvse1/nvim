local capabilities = vim.lsp.protocol.make_client_capabilities()

vim.lsp.config("kulala_ls", {
	capabilities = capabilities,
})
vim.lsp.enable("kulala_ls")
