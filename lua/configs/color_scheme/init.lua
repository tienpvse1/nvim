local M = {}

M.config = function()
	require("catppuccin").setup({
		flavour = "mocha",
		integrations = {
			cmp = true,
			gitsigns = {
				enabled = true,
				transparent = false,
			},
			nvimtree = true,
			treesitter = true,
			gitgraph = true,
			diffview = true,
			noice = true,
			mason = true,
			telescope = {
				enabled = true,
				style = "nvchad",
			},
		},

		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
				ok = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
				ok = { "underline" },
			},
			inlay_hints = {
				background = true,
			},
		},
	})

	local sign = vim.fn.sign_define
	sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = "" })
	sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
	sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })

	vim.cmd.colorscheme("catppuccin")

	require("bufferline").setup(require("configs.bufferline.opts"))
end

return M
