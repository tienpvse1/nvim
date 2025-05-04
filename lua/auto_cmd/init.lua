vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"help",
		"startuptime",
		"qf",
		"lspinfo",
		"man",
		"checkhealth",
		"gitsigns-blame"
	},
	command = [[
		nnoremap <buffer><silent> q :close<CR>
		set nobuflisted
	]],
})
