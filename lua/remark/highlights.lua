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
		Constant = { fg = palette.lyellow },
		String = { fg = palette.yellow },
		Boolean = { link = "Statement" },
		Identifier = { fg = palette.gray6 },
		Function = { fg = palette.gray5 }, -- this is a comment
		Statement = { fg = palette.lblue },
		Operator = { fg = palette.fg },
		PreProc = { link = "Statement" },
		Type = { link = "Statement" },
		Special = { link = "Operator" },
		SpecialChar = { fg = palette.lyellow },
		Tag = { link = "Function" },
		Todo = { fg = palette.lyellow, bold = true },
		Added = { fg = palette.fg },
		Changed = { fg = palette.gray3 },
		Removed = { fg = palette.fg },

		["@lsp.type.class"] = { link = "Type" },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.decorator"] = { link = "" },
		["@lsp.type.enum"] = { link = "Type" },
		["@lsp.type.enumMember"] = { link = "Identifier" },
		["@lsp.type.event"] = { link = "" },
		["@lsp.type.function"] = { link = "Function" },
		["@lsp.type.interface"] = { link = "Type" },
		["@lsp.type.keyword"] = { link = "Statement" },
		["@lsp.type.macro"] = { link = "Function" },
		["@lsp.type.method"] = { link = "Function" },
		["@lsp.type.modifier"] = { link = "Statement" },
		["@lsp.type.namespace"] = { link = "Statement" },
		["@lsp.type.number"] = { link = "Number" },
		["@lsp.type.operator"] = { link = "Operator" },
		["@lsp.type.parameter"] = { link = "Identifier" },
		["@lsp.type.property"] = { link = "Identifier" },
		["@lsp.type.regexp"] = { link = "SpecialChar" },
		["@lsp.type.string"] = { link = "String" },
		["@lsp.type.struct"] = { link = "Type" },
		["@lsp.type.type"] = { link = "Type" },
		["@lsp.type.typeParameter"] = { link = "Identifier" },
		["@lsp.type.variable"] = { link = "Identifier" },
	}

	for group, highlight in pairs(groups) do
		set(0, group, highlight)
	end

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
end

return M
