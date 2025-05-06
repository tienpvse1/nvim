local M = {}

M.dependencies = {
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	{
		"onsails/lspkind.nvim",
		opts = require("configs.lsp_kind"),
	},
}

M.config = function()
	local luasnip = require("luasnip")
	local cmp = require("cmp")

	require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/snippets" })

	luasnip.config.setup({})
	local select = { behavior = cmp.SelectBehavior.Select }
	local mapping = {
		["<Tab>"] = cmp.mapping.select_next_item(select),
		["<S-Tab>"] = cmp.mapping.select_prev_item(select),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}

	cmp.setup({
		formatting = require("configs.cmp.formatting"),
		mapping = mapping,
		sources = {
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "nvim_lua" },
			{ name = "path" },
		},
	})
end

return M
