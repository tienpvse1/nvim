return {
	"mistweaverco/kulala.nvim",
	ft = { "http", "rest" },
	opts = {
		global_keymaps = {
			["Open kulala"] = {
				"<leader>ro",
				function()
					require("kulala").open()
				end,
			},
			["Close window"] = {
				"q",
				function()
					require("kulala").close()
				end,
				ft = { "http", "rest" },
			},
			["Send request"] = {
				"<leader>rr",
				function()
					require("kulala").run()
				end,
				mode = { "n", "v" },
				desc = "Send request",
				ft = { "http", "rest" },
			},
			["Send all requests"] = {
				"<leader>ra",
				function()
					require("kulala").run_all()
				end,
				mode = { "n", "v" },
				ft = { "http", "rest" },
			},
			["Replay the last request"] = {
				"<leader>rl",
				function()
					require("kulala").replay()
				end,
				ft = { "http", "rest" },
			},

			["Find request"] = {
				"<leader>rf",
				function()
					require("kulala").search()
				end,
				ft = { "http", "rest" },
			},

			["Select environment"] = {
				"<leader>re",
				function()
					require("kulala").set_selected_env()
				end,
				ft = { "http", "rest" },
			},
			["Manage Auth Config"] = {
				"<leader>rx",
				function()
					require("kulala.ui.auth_manager").open_auth_config()
				end,
				ft = { "http", "rest" },
			},
			["Download GraphQL schema"] = {
				"<leader>rg",
				function()
					require("kulala").download_graphql_schema()
				end,
				ft = { "http", "rest" },
			},
		},
	},
}
