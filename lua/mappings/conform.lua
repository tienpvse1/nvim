local map = vim.keymap.set

map("n", "<leader>fm", function()
	require("conform").format({ bufnr = vim.api.nvim_get_current_buf(), lsp_format = "fallback" })
end, { desc = "Editor format document" })
