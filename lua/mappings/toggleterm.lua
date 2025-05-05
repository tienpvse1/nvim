local toggle_term = require("configs.toggle-term")
local map = vim.keymap.set

map({ "n", "t" }, "<A-i>", toggle_term, { desc = "Editor toggle term" })

map("t", "<C-x>", "<C-\\><C-n>", { silent = true })
