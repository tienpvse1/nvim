local map = vim.keymap.set
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions
local dropdown_theme = require("telescope.themes").get_dropdown({})
local diag_finder = require("configs.telescope.custom.diagnostics")

map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })

map("n", "<leader>fw", extensions.live_grep_args.live_grep_args, { desc = "Telescope live grep with args" })

map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

map("n", "<leader>fde", function()
	vim.diagnostic.setqflist({ title = "Diagnostics" })
end, { desc = "Telescope find errors" })

map("n", "<leader>fda", function()
	diag_finder({ dropdown_theme }, nil)
end, { desc = "Telescope find all diagnostics" })

