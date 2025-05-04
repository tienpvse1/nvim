local map = vim.keymap.set

map({ "n", "t" }, "<A-i>", function()
	vim.cmd([[ToggleTerm direction=float]])
end, { desc = "Editor save file" })

map("t", "<C-x>", "<C-\\><C-n>", { silent = true })
