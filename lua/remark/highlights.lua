local M = {}

function M.set(palette)
	local set = vim.api.nvim_set_hl

	local groups = {
		Conceal = { fg = palette.gray3 },
		CurSearch = { link = "Cursor" },
		Search = { fg = palette.bg, bg = palette.gray2 },
		IncSearch = { link = "Cursor" },
		Substitute = { link = "Search" },
		Cursor = { fg = palette.bg, bg = palette.fg },
		TermCursor = { link = "Cursor" },
		CursorLine = { bg = palette.gray1 },
		CursorColumn = { link = "CursorLine" },
		Directory = { fg = palette.gray6 },
		OkMsg = { fg = palette.lgreen },
		WarningMsg = { fg = palette.lyellow },
		ErrorMsg = { fg = palette.lred },
		StderrMsg = { link = "ErrorMsg" },
		WinSeperator = { link = "Normal" },
		LineNr = { link = "Conceal" },
		CursorLineNr = { link = "Cursor" },
		MatchParen = { link = "Cursor" },
		MsgArea = { link = "Normal" },
		Normal = { fg = palette.fg, bg = palette.bg },
		Pmenu = { link = "Normal" },
		PmenuSel = { link = "Cursor" },
		PmenuThumb = { link = "Cursor" },
		PmenuBorder = { link = "WinSeperator" },
		StatusLine = { link = "Normal" },
		StatusLineTerm = { link = "StatusLine" },
		Visual = { bg = palette.gray1 },
		Whitespace = { link = "Conceal" },

		Comment = { link = "Whitespace" },
		String = { fg = palette.lyellow },
		Identifier = { fg = palette.fg },
		Function = { fg = palette.gray4 }, -- this is a comment
		Statement = { fg = palette.lblue },
	}

	for group, highlight in pairs(groups) do
		set(0, group, highlight)
	end
end

return M
