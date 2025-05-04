local mocha = require("catppuccin.palettes").get_palette("mocha")

return {
	highlights = require("catppuccin.groups.integrations.bufferline").get({
		styles = { "italic", "bold" },
		custom = {},
	}),
	options = {
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
