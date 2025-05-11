return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},

	config = function()
		require("neogit").setup({
			graph_style = "kitty",
			mappings = {
				status = {
					["a"] = "Stage",
					["A"] = "StageUnstaged",
				},
			},
			floating = {
				relative = "editor",
				width = 0.9,
				height = 0.9,
				style = "minimal",
				border = "rounded",
			},
		})

		local events = require("neo-tree.events")
		events.fire_event(events.GIT_EVENT)
	end,
}
