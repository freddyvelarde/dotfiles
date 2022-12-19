colorscheme material

if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
  set termguicolors
endif

let g:material_terminal_italics = 1
let g:airline_theme = 'material'
