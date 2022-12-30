-- Lua
local status, _ = pcall(vim.cmd, "colorscheme tokyonight-night")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

pcall(vim.cmd, "let g:airline_theme='tomorrow'")
