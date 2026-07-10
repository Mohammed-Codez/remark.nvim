local palette = {
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
		white = palette.white,
	},
}

local M = {}

function M.get(variant)
	variant = variant or "dark"
	return variants[variant]
end

return M
