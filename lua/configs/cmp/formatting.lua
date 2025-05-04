local COMPLETION_KIND = require("configs.cmp.const").Completion
local formatting = {}

formatting.fields = { "kind", "abbr", "menu" }

formatting.format = function(entry, item)
	local kind = item.kind
	local kind_hl_group = ("CmpItemKind%s"):format(kind)

	item.kind_hl_group = ("%sIcon"):format(kind_hl_group)
	item.kind = (" %s "):format(COMPLETION_KIND[kind].icon)

	local source = entry.source.name
	if source == "nvim_lsp" or source == "path" then
		item.menu_hl_group = kind_hl_group
	else
		item.menu_hl_group = "Comment"
	end
	item.menu = kind

	if source == "buffer" then
		item.menu_hl_group = nil
		item.menu = nil
	end

	local half_win_width = math.floor(vim.api.nvim_win_get_width(0) * 0.5)
	if vim.api.nvim_strwidth(item.abbr) > half_win_width then
		item.abbr = ("%s…"):format(item.abbr:sub(1, half_win_width))
	end

	if item.menu then -- Add exta space to visually differentiate `abbr` and `menu`
		item.abbr = ("%s "):format(item.abbr)
	end
	return item
end

return formatting
