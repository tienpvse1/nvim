return {
	highlights = require("catppuccin.groups.integrations.bufferline").get({
		styles = { "italic", "bold" },
	}),
	options = {
		custom_filter = function(buf_number)
			if vim.bo[buf_number].buftype ~= "terminal" then
				return true
			end
		end,
		offsets = {
			{
				filetype = "neo-tree",
				text = "Neotree",
				text_align = "left",
				separator = true,
			},
		},
	},
}
