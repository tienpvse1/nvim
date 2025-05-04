return {
	"williamboman/mason-lspconfig.nvim",
	"nvim-treesitter/nvim-treesitter",
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
		"aserowy/tmux.nvim",
		config = function()
			return require("tmux").setup()
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
}
