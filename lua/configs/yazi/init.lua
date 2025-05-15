return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = {
	},
	keys = {
		-- 👇 in this section, choose your own keymappings!
		{
			"<leader>-",
			mode = { "n", "v" },
			"<cmd>Yazi<cr>",
			desc = "Open yazi at the current file",
		},
		{
			-- Open in the current working directory
			"<leader>cw",
			"<cmd>Yazi cwd<cr>",
			desc = "Open the file manager in nvim's working directory",
		},
		{
			"<c-up>",
			"<cmd>Yazi toggle<cr>",
			desc = "Resume the last yazi session",
		},
	},
	opts = {
		open_for_directories = false,
		integrations = {
			grep_in_directory = "telescope",
			grep_in_selected_files = "telescope",
		},
		keymaps = {
			show_help = "<f1>",
		},
	},
}
