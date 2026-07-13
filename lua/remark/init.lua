local M = {}

local palette = require("remark.palette")
local highlights = require("remark.highlights")

M.config = {
	style = "dark",
}

function M.setup(user_config)
	user_config = user_config or {}
	M.config = vim.tbl_deep_extend("force", M.config, user_config)

	vim.cmd("hi clear")

	if vim.fn.exists("syntax on") then
		vim.cmd("syntax reset")
	end

	vim.g.colors_name = "remark-" .. M.config.style

	vim.g.terminal_colors_0 = palette.black
	vim.g.terminal_colors_1 = palette.red
	vim.g.terminal_colors_2 = palette.green
	vim.g.terminal_colors_3 = palette.yellow
	vim.g.terminal_colors_4 = palette.blue
	vim.g.terminal_colors_5 = palette.magenta
	vim.g.terminal_colors_6 = palette.cyan
	vim.g.terminal_colors_7 = palette.gray5
	vim.g.terminal_colors_8 = palette.gray2
	vim.g.terminal_colors_9 = palette.lred
	vim.g.terminal_colors_10 = palette.lgreen
	vim.g.terminal_colors_11 = palette.lyellow
	vim.g.terminal_colors_12 = palette.lblue
	vim.g.terminal_colors_13 = palette.lmagenta
	vim.g.terminal_colors_14 = palette.lcyan
	vim.g.terminal_colors_15 = palette.white
	highlights.set(palette.get(M.config.style))
end

return M
