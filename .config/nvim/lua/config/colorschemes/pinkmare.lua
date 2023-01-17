local status, _ = pcall(vim.cmd, "colorscheme pinkmare")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

vim.cmd([[
set termguicolors
colorscheme pinkmare
]])
