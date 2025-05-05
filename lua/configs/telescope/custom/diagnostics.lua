local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values

-- our picker function: colors
--- Grep lsp diag
---@param opts table
---@param severity table<{severity: vim.diagnostic.Severity|vim.diagnostic.Severity[]|{ min: vim.diagnostic.Severity, max: vim.diagnostic.Severity }}> | nil
local find_errors = function(opts, severity)
	opts = opts or {}
	local diag = vim.diagnostic.get(nil, severity)
	pickers
		.new(opts, {
			prompt_title = "Diagnostics",
			finder = finders.new_table({
				results = diag,
				--- comment
				--- @param entry vim.Diagnostic
				--- @return table
				entry_maker = function(entry)
					return {
						value = vim.api.nvim_buf_get_name(entry.bufnr),
						display = entry.message,
						ordinal = entry.code,
					}
				end,
			}),
			sorter = conf.generic_sorter(opts),
		})
		:find()
end

return find_errors
