vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- allows to undo after restart neovim
vim.opt.undofile = true

-- use system clipboard
vim.o.clipboard = "unnamedplus"

-- use spellcheck with English lang
vim.o.spell = true
vim.o.spelllang = "en_us"

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
