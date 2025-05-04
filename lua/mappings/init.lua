local map = vim.keymap.set

map("n", "<leader>e", function()
	require("neo-tree.command").execute({ action = "focus" })
end, { desc = "Nvim tree focus" })

map("n", "<leader>fm", function()
	require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
end, { desc = "Editor format document" })

map("n", "<C-s>", function()
	vim.cmd.write()
end, { desc = "Editor save file" })

-- termial
map({ "n", "t" }, "<A-i>", function()
	vim.cmd([[ToggleTerm direction=float]])
end, { desc = "Editor save file" })

map("t", "<C-x>", "<C-\\><C-n>", { silent = true })

--tmux-nvim
map("n", "<C-h", function()
	require("tmux").move_left()
end, { desc = "Editor move focus left" })
map("n", "<C-j", function()
	require("tmux").move_down()
end, { desc = "Editor move focus down" })
map("n", "<C-k", function()
	require("tmux").move_up()
end, { desc = "Editor move focus up" })
map("n", "<C-l", function()
	require("tmux").move_right()
end, { desc = "Editor move focus right" })
