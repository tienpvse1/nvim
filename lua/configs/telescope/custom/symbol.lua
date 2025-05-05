local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values

local find_errors = function(opts)
	opts = opts or {}
	local title = ""
	vim.lsp.buf.document_symbol({
		loclist = false,
		on_list = function(t)
			-- title = t.title 
			-- t.items
		end,
	})
	pickers
		.new(opts, {
			prompt_title = title,
			finder = finders.new_table({
				results = {},
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
