return {
	-- require("configs.avante"),
	require("configs.surround"),
	require("configs.whichkey"),
	require("configs.rest"),
	require("configs.neogit"),
	require("configs.diffview"),
	require("configs.cmp"),
	require("configs.lsp"),
	require("configs.mason"),
	require("configs.color_scheme"),
	require("configs.lualine"),
	require("configs.noice"),
	require("configs.conform"),
	require("configs.telescope"),
	require("configs.todo_comment"),
	require("configs.yazi"),
	"williamboman/mason-lspconfig.nvim",
	"nvim-tree/nvim-web-devicons",

	"MunifTanjim/nui.nvim",

	{
		"smjonas/inc-rename.nvim",
		opts = {},
	},
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
}
