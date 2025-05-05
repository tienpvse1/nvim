return {
	{
		"nvim-telescope/telescope-live-grep-args.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		-- This will not install any breaking changes.
		-- For major updates, this must be adjusted manually.
		version = "^1.0.0",
	},
}
