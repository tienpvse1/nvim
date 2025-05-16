local map = vim.keymap.set
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions
local dropdown_theme = require("telescope.themes").get_dropdown({})
local diag_finder = require("configs.telescope.custom.diagnostics")

map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
map("n", "<leader>fc", function()
	builtin.find_files({
		cwd = vim.fn.stdpath("config"),
	})
end, { desc = "Telescope find files" })

map("n", "<leader>fw", extensions.live_grep_args.live_grep_args, { desc = "Telescope live grep with args" })

map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })

map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

map("n", "<leader>fz", builtin.current_buffer_fuzzy_find, { desc = "Telescope fuzzy find current buffer" })

map("n", "<leader>fs", "<cmd>Navbuddy<CR>", { desc = "Navbuddy open LSP" })

map("n", "<leader>fs", "<cmd>Navbuddy<CR>", { desc = "Navbuddy open LSP" })
map("n", "<leader>u", extensions.undo.undo, { desc = "Navbuddy open LSP" })

map("n", "<leader>fgb", function()
	builtin.git_branches()
end, { desc = "Telescope find branches" })

map("n", "<leader>fda", function()
	diag_finder({ dropdown_theme }, nil)
end, { desc = "Telescope find all diagnostics" })

map("n", "<leader>tt", function()
	vim.cmd({ cmd = "TodoTelescope" })
end, { desc = "Todo Comment grep" })
