local function create_floating_window()
	local current_buf = vim.api.nvim_get_current_buf()
	vim.cmd([[wincmd c]])
	vim.api.nvim_open_win(current_buf, true, {
		border = "rounded",
		relative = "editor",
		col = math.floor(vim.o.columns * 0.05),
		row = math.floor(vim.o.lines * 0.05),
		height = math.floor(vim.o.lines * 0.9),
		width = math.floor(vim.o.columns * 0.9),
	})
end

vim.api.nvim_create_autocmd("BufEnter", {
	group = vim.api.nvim_create_augroup("HelpReplaceWindow", { clear = true }),
	callback = function()
		if vim.bo.filetype == "help" then
			create_floating_window()
		end
	end,
})
