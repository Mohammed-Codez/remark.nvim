local palette = {
	black = "#222222",
	white = "#eeeeee",
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
