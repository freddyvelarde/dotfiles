
local status, _ = pcall(vim.cmd, "colorscheme gotham256")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

pcall(vim.cmd, "let g:airline_theme='night_owl'")

vim.cmd([[
let g:lightline = { 'colorscheme': 'gotham256' }
]])
