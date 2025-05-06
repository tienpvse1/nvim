local group = vim.api.nvim_create_augroup("YankingGroup", { clear = true })
local quick_key_group = vim.api.nvim_create_augroup("QuickKey", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight after yank",
	group = group,
	callback = function()
		vim.hl.on_yank({
			higroup = "CursorIM",
			timeout = 300,
		})
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	desc = "Quick console.log",
	pattern = { "typescript", "javascript", "typescriptreact", "javascriptreact", "svelte" },
	group = quick_key_group,
	callback = function()
		local esc = vim.api.nvim_replace_termcodes("<ESC>", true, true, true)
		vim.keymap.set(
			"n",
			"ql",
			"yiwoconsole.log('" .. esc .. "pa: ', " .. esc .. "pa);",
			{ desc = "Editor quick console.log" }
		)
	end,
})
