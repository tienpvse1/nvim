local group = vim.api.nvim_create_augroup("YankingGroup", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight after yank",
	group = group,
	callback = function()
		vim.highlight.on_yank()
	end,
})
