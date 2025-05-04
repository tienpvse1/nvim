local M = {}

M.config = function()
	local actions = require("diffview.actions")
	require("diffview").setup({
		view = {
			merge_tool = {
				layout = "diff3_mixed",
			},
		},
		hooks = {
			diff_buf_win_enter = function(bufnr, winid, ctx)
				if ctx.layout_name:match("^diff2") then
					if ctx.symbol == "a" then
						vim.opt_local.winhl = table.concat({
							"DiffAdd:DiffviewDiffAddAsDelete",
							"DiffDelete:DiffviewDiffDelete",
						}, ",")
					elseif ctx.symbol == "b" then
						vim.opt_local.winhl = table.concat({
							"DiffDelete:DiffviewDiffDelete",
						}, ",")
					end
				end
			end,
		},
		keymaps = {
			view = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
			diff1 = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
			diff2 = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
			diff3 = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
			diff4 = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
			file_panel = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
			file_history_panel = {
				{ "n", "q", actions.close, { desc = "Git Close diffview" } },
			},
		},
	})
end

return M
