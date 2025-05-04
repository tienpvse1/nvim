return {
	"williamboman/mason-lspconfig.nvim",
	{
		"aserowy/tmux.nvim",
		config = function()
			return require("tmux").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
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
	"nvim-treesitter/nvim-treesitter",
	{
		"Mofiqul/dracula.nvim",
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
			{ "3rd/image.nvim", opts = {} },
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
		"NeogitOrg/neogit",
		dependencies = {
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
}
