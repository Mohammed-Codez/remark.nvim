local M = {}

function M.set(palette)
	local set = vim.api.nvim_set_hl

	local groups = {
		Conceal = { fg = palette.gray2 },
		CurSearch = { fg = palette.bg, bg = palette.fg },
		IncSearch = { link = "CurSearch" },
		Cursor = { link = "CurSearch" },
		TermCursor = { link = "Cursor" },
		CursorLine = { bg = palette.gray1 },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = palette.gray6 },
		OkMsg = { fg = palette.lgreen },
		WarningMsg = { fg = palette.lyellow },
		ErrorMsg = { fg = palette.lred },
		StderrMsg = { link = "ErrorMsg" },
		WinSeperator = { link = "Normal" },
		Normal = { fg = palette.fg, bg = palette.bg },
	}

	for group, highlight in pairs(groups) do
		set(0, group, highlight)
	end
end

return M
