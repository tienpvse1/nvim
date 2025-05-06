local M = {}
local opts = {
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		javascript = { "prettier", stop_after_first = true },
		json = { "prettier", stop_after_first = true },
		jsonc = { "prettier", stop_after_first = true },
		javascriptreact = { "prettier", stop_after_first = true },
		svelte = { "prettier", stop_after_first = true },
		typescript = { "prettier", stop_after_first = true },
		typescriptreact = { "prettier", stop_after_first = true },
	},
}

M.config = function()
	require("conform").setup(opts)
end

return M
