local map = vim.keymap.set

map("n", "<leader>e", function()
	local reveal_file = vim.fn.expand("%:p")
	if reveal_file == "" then
		reveal_file = vim.fn.getcwd()
	else
		local f = io.open(reveal_file, "r")
		if f then
			f.close(f)
		else
			reveal_file = vim.fn.getcwd()
		end
	end
	require("neo-tree.command").execute({
		action = "focus", -- OPTIONAL, this is the default value
		source = "filesystem", -- OPTIONAL, this is the default value
		position = "left", -- OPTIONAL, this is the default value
		reveal_file = reveal_file, -- path to file or folder to reveal
		reveal_force_cwd = true, -- change cwd without asking if needed
	})
end, { desc = "Nvim tree focus" })

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

map("n", "<C-s>", function()
	vim.cmd.write()
end, { desc = "Editor save file" })
