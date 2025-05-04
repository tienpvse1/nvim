local M = {}

M.config = function()
	local lualine = require('lualine')
	local config = {
		disabled_filetypes = {
			winbar = {},
			statusline = {},
			["neo-tree"] = {},
		},
		extensions = { "neo-tree", "quickfix" }
	}

	lualine.setup(config)
end

return M
