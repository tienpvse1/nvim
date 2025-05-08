vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- allows to undo after restart nvim
vim.opt.undofile = true

-- use system clipboard
vim.o.clipboard = "unnamedplus"

-- custom diagnostic
vim.diagnostic.config({
	virtual_text = {
		severity = { min = vim.diagnostic.severity.HINT, max = vim.diagnostic.severity.ERROR },
		prefix = function(diagnostic, i, total)
			if i ~= total then
				return ""
			end
			if diagnostic.severity == vim.diagnostic.severity.ERROR then
				return ""
			end
			if diagnostic.severity == vim.diagnostic.severity.WARN then
				return ""
			end
			if diagnostic.severity == vim.diagnostic.severity.INFO then
				return ""
			end
			return ""
		end,
	},
	severity_sort = true,
	signs = false,
})
