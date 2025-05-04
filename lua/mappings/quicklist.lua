local map = vim.keymap.set

map("n", "<A-j>", "<cmd>cnext<CR>", { desc = "Quickfix Next item" })

map("n", "<A-k>", "<cmd>cprevious<CR>", { desc = "Quickfix Previous item" })

map("n", "<leader>qo", "<cmd>copen<CR>", { desc = "Quickfix Open" })

map("n", "<leader>qc", "<cmd>cclose<CR>", { desc = "Quickfix Close" })
