local M = {}

M.config = function()
	require("dracula").setup()
	vim.cmd([[colorscheme dracula]])
end

return M
