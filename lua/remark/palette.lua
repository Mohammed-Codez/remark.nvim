local palette = {
	bgray3 = "#6c7074",
	bgray2 = "#4c5458",
	bgray1 = "#30343c",
	bblack = "#101820",
	black = "#202020",
	gray1 = "#3c3c3c",
	gray2 = "#585858",
	gray3 = "#747474",
	gray4 = "#909090",
	gray5 = "#acacac",
	gray6 = "#c8c8c8",
	white = "#e4e4e4",
}

local variants = {
	dark = {
		black = palette.black,
		gray1 = palette.gray1,
		gray2 = palette.gray2,
		gray3 = palette.gray3,
		gray4 = palette.gray4,
		gray5 = palette.gray5,
		gray6 = palette.gray6,
		white = palette.white,
	},
	["faux-dark"] = {
		black = palette.black,
		gray1 = palette.bgray1,
		gray2 = palette.bgray2,
		gray3 = palette.bgray3,
		gray4 = palette.gray4,
		gray5 = palette.gray5,
		gray6 = palette.gray6,
		white = palette.white,
	},
}

local M = {}

function M.get(variant)
	variant = variant or "dark"
	return variants[variant]
end

return M
