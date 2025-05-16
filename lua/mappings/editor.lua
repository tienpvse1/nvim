local map = vim.keymap.set

map("n", "<leader>e", vim.cmd.Yazi, { desc = "Nvim tree focus" })

map("i", "jj", "<ESC>", { desc = "Exit insert mode" })

map("n", "<C-h>", "<C-w>h", { desc = "Editor move focus left" })

map("n", "<C-j>", "<C-w>j", { desc = "Editor move focus down" })

map("n", "<C-k>", "<C-w>k", { desc = "Editor move focus up" })

map("n", "<C-l>", "<C-w>l", { desc = "Editor move focus right" })

map("n", "<A-v>", vim.cmd.vsplit, { desc = "Split the editor vertically" })
map("n", "<ESC>", vim.cmd.noh, { desc = "Split the editor vertically" })

map("n", "<C-s>", function()
	vim.cmd.write()
end, { desc = "Editor save file" })

map({'n', 'o', 'x'}, '<C-p>', '<C-o>', { silent = true })
map({'n', 'o', 'x'}, '<C-n>', '<C-i>', { silent = true })
