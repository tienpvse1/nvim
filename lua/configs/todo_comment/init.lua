return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "catppuccin/nvim" },

	config = function()
		local todo = require("todo-comments")
		local mocha = require("catppuccin.palettes").get_palette("mocha")
		todo.setup({
			colors = {
				error = { mocha.red },
				warning = { mocha.yellow },
				info = { mocha.blue },
				hint = { mocha.blue },
				default = { mocha.blue },
				test = { mocha.green },
			},
		})
	end,
}
