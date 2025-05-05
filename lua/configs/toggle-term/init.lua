local api = vim.api

local state = {
	buffnr = -1,
	winnr = -1,
}

local function open_term(buffnr)
	-- do nothing if attempt to open nested terminal
	if vim.o.buftype == "terminal" then
		return state
	end

	-- validate buffer, ensure not to attempt to open closed buffer
	if not api.nvim_buf_is_valid(buffnr) then
		buffnr = vim.api.nvim_create_buf(false, true)
	end

	-- open window
	local winnr = api.nvim_open_win(buffnr, true, {
		border = "rounded",
		relative = "editor",
		col = math.floor(vim.o.columns * 0.1),
		row = math.floor(vim.o.lines * 0.05),
		height = math.floor(vim.o.lines * 0.9),
		width = math.floor(vim.o.columns * 0.8),
	})

	-- to open a terminal, set the buffer type to terminal
	if vim.bo[buffnr].buftype ~= "terminal" then
		vim.cmd.term()
		vim.cmd(":startinsert")
	end

	return { winnr = winnr, buffnr = buffnr }
end

local function toggle_term()
	if not api.nvim_win_is_valid(state.winnr) then
		local opened_state = open_term(state.buffnr)
		state.buffnr = opened_state.buffnr
		state.winnr = opened_state.winnr
	else
		api.nvim_win_hide(state.winnr)
	end
end

return toggle_term
