local map = vim.keymap.set

local neogit = require("neogit")

map("n", "<leader>gg", neogit.open, { desc = "Git Open panel" })

map("n", "<leader>gl", function()
	neogit.open({ "log" })
end, { desc = "Git Open panel" })

map("n", "<leader>gb", function()
  require("gitsigns").toggle_current_line_blame()
end, { desc = "Git Toggle blame line" })

map("n", "<leader>gf", function()
  vim.cmd { cmd = "DiffviewFileHistory", args = { "%" } }
end, { desc = "Git File history floating" })
