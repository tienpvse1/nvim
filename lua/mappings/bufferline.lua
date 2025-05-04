local lazy = require("bufferline.lazy")
local commands = lazy.require("bufferline.commands")

local map = vim.keymap.set

map("n", "<Tab>", function()
	commands.cycle(1)
end, { desc = "Go to next tab" })

map("n", "<S-Tab>", function()
	commands.cycle(-1)
end, { desc = "Go to next tab" })

map("n", "<leader>qa", function()
	commands.close_with_pick()
end, { desc = "Go to next tab" })

map("n", "<leader>x", function()
	vim.cmd.bd()
end, { desc = "Go to next tab" })
