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
	highlights.set(palette.get(M.config.style))
end

return M
