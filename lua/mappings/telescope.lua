local map = vim.keymap.set
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions

map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })

map("n", "<leader>fw", extensions.live_grep_args.live_grep_args, { desc = "Telescope live grep with args" })
