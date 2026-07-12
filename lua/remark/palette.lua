local palette = {
	bgray3 = "#6c6c74",
	bgray2 = "#4c5058",
	bgray1 = "#30303c",
	bblack = "#101420",
	black = "#202020",
	gray1 = "#3c3c3c",
	gray2 = "#585858",
	gray3 = "#747474",
	gray4 = "#909090",
	gray5 = "#acacac",
	gray6 = "#c8c8c8",
	white = "#e4e4e4",
	red = "#ac5858",
	lred = "#e47474",
	green = "#809074",
	lgreen = "#b0c0ac",
	yellow = "#c8ac58",
	lyellow = "#e4c874",
	blue = "#5874ac",
	lblue = "#7490c8",
}

local variants = {
	dark = {
		bg = palette.black,
		gray1 = palette.gray1,
		gray2 = palette.gray2,
		gray3 = palette.gray3,
		gray4 = palette.gray4,
		gray5 = palette.gray5,
		gray6 = palette.gray6,
		fg = palette.white,
		red = palette.red,
		lred = palette.lred,
		green = palette.green,
		lgreen = palette.lgreen,
		yellow = palette.yellow,
		lyellow = palette.lyellow,
		blue = palette.blue,
		lblue = palette.lblue,
	},
	["faux-dark"] = {
		bg = palette.bblack,
		gray1 = palette.bgray1,
		gray2 = palette.bgray2,
		gray3 = palette.bgray3,
		gray4 = palette.gray4,
		gray5 = palette.gray5,
		gray6 = palette.gray6,
		fg = palette.white,
		red = palette.red,
		lred = palette.lred,
		green = palette.green,
		lgreen = palette.lgreen,
		yellow = palette.yellow,
		lyellow = palette.lyellow,
		blue = palette.blue,
		lblue = palette.lblue,
	},
}

local M = {}

function M.get(variant)
	variant = variant or "dark"
	return variants[variant]
end

return M
