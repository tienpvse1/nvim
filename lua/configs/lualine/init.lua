local M = {}

M.config = function()
	local lualine = require("lualine")
	local config = {
		options = {
			theme = "catppuccin",
		},
		extensions = { "neo-tree", "quickfix" },
	}

	lualine.setup(config)
end

return M
