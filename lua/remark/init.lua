local M = {}

local palette = require("remark.palette")
local highlights = require("remark.highlights")

function M.setup(config)
	vim.cmd("hi clear")

	if vim.fn.exists("syntax on") then
		vim.cmd("syntax reset")
	end

	highlights.set(palette.get())
end

return M
