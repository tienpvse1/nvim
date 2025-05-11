local function config()
	local telescope = require("telescope")

	telescope.setup({
		pickers = {
			buffers = {
				show_all_buffers = true,
				sort_lastused = true,
				theme = "dropdown",
				previewer = false,
				mappings = {
					n = {
						["<C-d>"] = "delete_buffer",
					},
				},
			},
		},
		defaults = {
			prompt_prefix = "   ",
			selection_caret = " ",
			entry_prefix = " ",
			sorting_strategy = "ascending",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
				},
				width = 0.87,
				height = 0.80,
			},
			mappings = {
				n = { ["q"] = require("telescope.actions").close },
			},
		},
		extensions = {
			["ui-select"] = {
				require("telescope.themes").get_dropdown({}),
			},
			fzf = {
				fuzzy = true, -- false will only do exact matching
				override_generic_sorter = true, -- override the generic sorter
				override_file_sorter = true, -- override the file sorter
				case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				-- the default case_mode is "smart_case"
			},
		},
	})

	telescope.load_extension("live_grep_args")
	telescope.load_extension("ui-select")
	telescope.load_extension("fzf")
end

return config
