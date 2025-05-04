local map = vim.keymap.set

map("n", "<leader>dt", function()
	require("dapui").toggle()
end, { desc = "DAP Toggle UI" })

map("n", "<leader>de", function()
	require("dapui").eval()
end, { desc = "DAP Evaluate variable" })

map("n", "<leader>db", function()
	local condition = vim.fn.input("Breakpoint condition ", "true")
	require("dap").toggle_breakpoint(condition)
end, { desc = "DAP Add breakpoint at line" })

map("n", "<F8>", function()
	require("dap").toggle_breakpoint()
end, { desc = "DAP add conditional breakpoint at line" })

map("n", "<F5>", function()
	require("dap").continue()
end, {
	desc = "DAP Run or continue the debugger",
})

map("n", "<F10>", function()
	require("dap").step_over()
end, {
	desc = "DAP Step Over",
})

map("n", "<F11>", function()
	require("dap").step_into()
end, {
	desc = "DAP Step Into",
})

map("n", "<S-F11>", function()
	require("dap").step_out()
end, {
	desc = "DAP Step out",
})

map("n", "<F6>", function()
	require("dap").terminate({ all = "true" })
end, {
	desc = "DAP Terminate session",
})
