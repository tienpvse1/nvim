local M = {}

M.config = function()
	require("neogit").setup({
		mappings = {
			status = {
				["a"] = "Stage",
				["A"] = "StageUnstaged",
			},
		},
	})

	local events = require("neo-tree.events")
	events.fire_event(events.GIT_EVENT)
end

return M
