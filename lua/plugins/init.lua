return {
	"williamboman/mason-lspconfig.nvim",
	{
		"lewis6991/gitsigns.nvim",
		opts = true,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"windwp/nvim-ts-autotag",
		opts = {},
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		opts = require("configs.bufferline.opts"),
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = require("configs.treesitter").config,
	},
	{
		"mxsdev/nvim-dap-vscode-js",
	},
	{
		"mfussenegger/nvim-dap",
		config = function()
			require("configs.dap.node")
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "nvim-neotest/nvim-nio" },
		config = function()
			require("configs.dap.ui").config()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = require("configs.telescope.dependencies"),
		config = require("configs.telescope.config").config,
	},
	{
		"stevearc/conform.nvim",
		config = require("configs.conform").config,
	},
	{ "akinsho/toggleterm.nvim", version = "*", opts = true },
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = require("configs.lualine").config,
	},
	{
		"catppuccin/nvim",
		config = require("configs.color_scheme").config,
	},
	{

		"williamboman/mason.nvim",
		config = require("configs.mason").config,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		opts = {
			event_handlers = {

				{
					event = "file_open_requested",
					handler = function()
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lsp")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter" },
		enabled = true,
		dependencies = require("configs.cmp").dependencies,
		config = require("configs.cmp").config,
	},
	{

		"sindrets/diffview.nvim",
		config = require("configs.diffview").config,
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-telescope/telescope.nvim",
		},
		config = require("configs.neogit").config,
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		opts = true,
	},
}
