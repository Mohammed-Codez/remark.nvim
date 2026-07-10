local M = {}

function M.set(palette)
	local set = vim.api.nvim_set_hl

	local groups = {
		Normal = { fg = palette.white, bg = palette.black },
	}

	for group, highlight in pairs(groups) do
		set(0, group, highlight)
	end
end

return M
