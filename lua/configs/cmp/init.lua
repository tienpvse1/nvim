local M = {}

M.dependencies = {
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/cmp-emoji",
}

M.config = function()
	local luasnip = require "luasnip"
	require('luasnip.loaders.from_vscode').lazy_load()
	luasnip.config.setup {}
	local cmp = require "cmp"
	local select = { behavior = cmp.SelectBehavior.Select }
	local mapping = {
		["<Tab>"] = cmp.mapping.select_next_item(select),
		["<S-Tab>"] = cmp.mapping.select_prev_item(select),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	}

	cmp.setup({
		completion = {
			completeopt = "menu,menuone,noinsert,noselect",
		},
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = mapping,
		sources = {
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
			{ name = "buffer" },
			{ name = "path" },
			{ name = "emoji" },
		},
	})
end

return M
