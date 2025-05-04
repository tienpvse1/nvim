local map = vim.keymap.set

map("n", "gd", function()
	vim.lsp.buf.definition()
end, { desc = "LSP go to definition" })

map("n", "grr", function()
	vim.lsp.buf.references()
end, { desc = "LSP go to references" })

map("n", "<leader>rn", function()
	vim.lsp.buf.rename()
end, { desc = "LSP rename" })

map("n", "<S-i>", function()
	vim.diagnostic.open_float({ scope = "line" })
end, { desc = "LSP show diagnostics" })

map("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "LSP show code actions" })

map("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "LSP show diagnostics" })
