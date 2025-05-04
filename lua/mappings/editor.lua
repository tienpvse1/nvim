local map = vim.keymap.set

local function focus_tree()
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
		reveal_file = reveal_file,
		reveal_force_cwd = true,
	})
end

map("n", "<leader>e", focus_tree, { desc = "Nvim tree focus" })

map("n", "<C-h>", "<C-w>h", { desc = "Editor move focus left" })

map("n", "<C-j>", "<C-w>j", { desc = "Editor move focus down" })

map("n", "<C-k>", "<C-w>k", { desc = "Editor move focus up" })

map("n", "<C-l>", "<C-w>l", { desc = "Editor move focus right" })

map("n", "<A-v>", vim.cmd.vsplit, { desc = "Split the editor vertically" })

map("n", "<C-s>", function()
	vim.cmd.write()
end, { desc = "Editor save file" })
