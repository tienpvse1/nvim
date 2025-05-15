return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		presets = { inc_rename = true },
		commands = {
			history = {
				view = "popup",
			},
			error = {
				view = "popup",
			},
			all = {
				view = "popup",
			}
		}
	},
}
