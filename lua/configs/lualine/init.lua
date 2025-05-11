local function recording_msg()
	local reg = vim.fn.reg_recording()
	if reg == "" then
		return ""
	end -- not recording
	return "recording to " .. reg
end

return {

	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "catppuccin",
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
			lualine_b = { "filename" },
			lualine_c = {

				"%=", --[[ add your center components here in place of this comment ]]
				"diagnostics",
				recording_msg,
			},
			lualine_x = {
				"diff",
			},
			lualine_y = { "filetype", "branch" },
			lualine_z = {},
		},
		inactive_sections = {
			lualine_a = { "filename" },
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { "location" },
		},
		tabline = {},
		extensions = {},
	},
}
