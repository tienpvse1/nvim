return {
	"williamboman/mason-lspconfig.nvim",
	"nvim-tree/nvim-web-devicons",

	"MunifTanjim/nui.nvim",
	{
		"akinsho/bufferline.nvim",
		version = "*",
	},
	{ "nvim-lua/plenary.nvim" },
	{
		"lewis6991/gitsigns.nvim",
		opts = true,
	},
	{
		"numToStr/Comment.nvim",
		opts = require("configs.comment"),
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
		dependencies = {},
	},
	{
		"nvim-lualine/lualine.nvim",
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
		opts = require("configs.neotree").opts,
		lazy = false,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = require("configs.lsp.dependencies"),
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
