-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- local status, _ = pcall(vim.cmd, "colorscheme material")
-- local status, _ = pcall(vim.cmd, "colorscheme ayu")
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")

local status, _ = pcall(vim.cmd, "colorscheme gotham")

-- vim.g.material_style = "deep ocean"

if not status then
	print("Colorscheme not found, nightfly theme by default!") -- print error if colorscheme not installed
	vim.cmd("colorscheme nightfly")
	return
end
