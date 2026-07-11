local M = {}

local palette = require("remark.palette")
local highlights = require("remark.highlights")

function M.setup(user_config)
	user_config = user_config or {}
	M.config = vim.tbl_deep_extend("force", M.config, user_config)

	vim.cmd("hi clear")

	if vim.fn.exists("syntax on") then
		vim.cmd("syntax reset")
	end

	highlights.set(palette.get())
end

return M
