" Sakura colorscheme for Vim/Neovim
" Maintainer: Sakura Theme
" License: MIT

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "sakura"

" Color definitions - mapped to bat/ansi positions
let background = "#0d0509"
let foreground = "#f0eaed"
let cursor     = "#f0eaed"

" ANSI Colors (bat compatible)
let black      = "#0d0509"    " ansi 0 - background
let red        = "#E85F6F"    " ansi 1 - red (errors, functions)
let green      = "#F29B9A"    " ansi 2 - green (strings, added)
let yellow     = "#D4A882"    " ansi 3 - yellow (types, warnings)
let blue       = "#D9A56C"    " ansi 4 - blue (keywords, info)
let magenta    = "#D1B399"    " ansi 5 - magenta (constants)
let cyan       = "#E8C099"    " ansi 6 - cyan (special)
let white      = "#f0eaed"    " ansi 7 - foreground
let br_black   = "#4a3c45"    " ansi 8 - bright black (comments)
let br_red     = "#FF7A8A"    " ansi 9 - bright red
let br_green   = "#FFB5B4"    " ansi 10 - bright green
let br_yellow  = "#E6BA94"    " ansi 11 - bright yellow
let br_blue    = "#EBB97E"    " ansi 12 - bright blue
let br_magenta = "#E3C5AB"    " ansi 13 - bright magenta
let br_cyan    = "#FBD2AB"    " ansi 14 - bright cyan
let br_white   = "#ffffff"    " ansi 15 - bright white

" Terminal colors
if has('nvim')
  let g:terminal_color_0 = black
  let g:terminal_color_1 = red
  let g:terminal_color_2 = green
  let g:terminal_color_3 = yellow
  let g:terminal_color_4 = blue
  let g:terminal_color_5 = magenta
  let g:terminal_color_6 = cyan
  let g:terminal_color_7 = white
  let g:terminal_color_8 = br_black
  let g:terminal_color_9 = br_red
  let g:terminal_color_10 = br_green
  let g:terminal_color_11 = br_yellow
  let g:terminal_color_12 = br_blue
  let g:terminal_color_13 = br_magenta
  let g:terminal_color_14 = br_cyan
  let g:terminal_color_15 = br_white
elseif has('terminal')
  let g:terminal_ansi_colors = [
    \ black, red, green, yellow,
    \ blue, magenta, cyan, white,
    \ br_black, br_red, br_green, br_yellow,
    \ br_blue, br_magenta, br_cyan, br_white
  \ ]
endif

" Basic highlight groups
exe "hi Normal guifg=" . foreground . " guibg=" . background . " ctermfg=7 ctermbg=0"
exe "hi Cursor guifg=" . background . " guibg=" . cursor . " ctermfg=0 ctermbg=7"
exe "hi CursorLine guibg=" . br_black . " ctermbg=8"
exe "hi CursorColumn guibg=" . br_black . " ctermbg=8"
exe "hi LineNr guifg=" . br_black . " ctermfg=8"
exe "hi CursorLineNr guifg=" . white . " ctermfg=7"

" Syntax highlighting - bat-style mapping
exe "hi Comment guifg=" . br_black . " gui=italic ctermfg=8 cterm=italic"
exe "hi String guifg=" . green . " ctermfg=2"
exe "hi Character guifg=" . br_green . " ctermfg=10"
exe "hi Number guifg=" . cyan . " ctermfg=6"
exe "hi Float guifg=" . cyan . " ctermfg=6"
exe "hi Boolean guifg=" . red . " ctermfg=1"
exe "hi Constant guifg=" . magenta . " ctermfg=5"
exe "hi Identifier guifg=" . white . " ctermfg=7"
exe "hi Function guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi Statement guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi Conditional guifg=" . blue . " ctermfg=4"
exe "hi Repeat guifg=" . blue . " ctermfg=4"
exe "hi Label guifg=" . blue . " ctermfg=4"
exe "hi Operator guifg=" . white . " ctermfg=7"
exe "hi Keyword guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi Exception guifg=" . red . " ctermfg=1"
exe "hi PreProc guifg=" . br_magenta . " ctermfg=13"
exe "hi Include guifg=" . br_magenta . " ctermfg=13"
exe "hi Define guifg=" . br_magenta . " ctermfg=13"
exe "hi Macro guifg=" . br_magenta . " ctermfg=13"
exe "hi PreCondit guifg=" . br_magenta . " ctermfg=13"
exe "hi Type guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi StorageClass guifg=" . yellow . " ctermfg=3"
exe "hi Structure guifg=" . yellow . " ctermfg=3"
exe "hi Typedef guifg=" . yellow . " ctermfg=3"
exe "hi Special guifg=" . cyan . " ctermfg=6"
exe "hi SpecialChar guifg=" . br_cyan . " ctermfg=14"
exe "hi Tag guifg=" . red . " ctermfg=1"
exe "hi Delimiter guifg=" . white . " ctermfg=7"
exe "hi SpecialComment guifg=" . br_yellow . " ctermfg=11"
exe "hi Debug guifg=" . br_red . " ctermfg=9"

" Additional syntax highlighting
exe "hi Class guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi Variable guifg=" . white . " ctermfg=7"
exe "hi Property guifg=" . cyan . " ctermfg=6"
exe "hi Method guifg=" . red . " ctermfg=1"

" UI elements
exe "hi Visual guibg=" . br_black . " ctermbg=8"
exe "hi Search guifg=" . background . " guibg=" . yellow . " gui=bold ctermfg=0 ctermbg=3 cterm=bold"
exe "hi IncSearch guifg=" . background . " guibg=" . br_yellow . " gui=bold ctermfg=0 ctermbg=11 cterm=bold"
exe "hi StatusLine guifg=" . white . " guibg=" . br_black . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi StatusLineNC guifg=" . br_black . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi VertSplit guifg=" . br_black . " ctermfg=8"
exe "hi Pmenu guifg=" . white . " guibg=" . br_black . " ctermfg=7 ctermbg=8"
exe "hi PmenuSel guifg=" . background . " guibg=" . blue . " gui=bold ctermfg=0 ctermbg=4 cterm=bold"
exe "hi PmenuSbar guibg=" . br_black . " ctermbg=8"
exe "hi PmenuThumb guibg=" . white . " ctermbg=7"
exe "hi TabLine guifg=" . br_black . " guibg=" . background . " ctermfg=8 ctermbg=0"
exe "hi TabLineFill guibg=" . background . " ctermbg=0"
exe "hi TabLineSel guifg=" . white . " guibg=" . br_black . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"

" Diff highlighting - bat-style
exe "hi DiffAdd guifg=" . green . " guibg=" . background . " gui=bold ctermfg=2 ctermbg=0 cterm=bold"
exe "hi DiffChange guifg=" . yellow . " guibg=" . background . " ctermfg=3 ctermbg=0"
exe "hi DiffDelete guifg=" . red . " guibg=" . background . " gui=bold ctermfg=1 ctermbg=0 cterm=bold"
exe "hi DiffText guifg=" . br_yellow . " guibg=" . background . " gui=bold ctermfg=11 ctermbg=0 cterm=bold"

" Git gutter
exe "hi GitGutterAdd guifg=" . green . " ctermfg=2"
exe "hi GitGutterChange guifg=" . yellow . " ctermfg=3"
exe "hi GitGutterDelete guifg=" . red . " ctermfg=1"
exe "hi GitGutterChangeDelete guifg=" . magenta . " ctermfg=5"

" Error and warning
exe "hi Error guifg=" . br_red . " guibg=" . background . " gui=bold ctermfg=9 ctermbg=0 cterm=bold"
exe "hi Warning guifg=" . br_yellow . " guibg=" . background . " gui=bold ctermfg=11 ctermbg=0 cterm=bold"
exe "hi ErrorMsg guifg=" . br_red . " gui=bold ctermfg=9 cterm=bold"
exe "hi WarningMsg guifg=" . br_yellow . " gui=bold ctermfg=11 cterm=bold"
exe "hi Question guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi MoreMsg guifg=" . green . " gui=bold ctermfg=2 cterm=bold"

" Folding
exe "hi Folded guifg=" . br_black . " guibg=" . background . " gui=italic ctermfg=8 ctermbg=0 cterm=italic"
exe "hi FoldColumn guifg=" . br_black . " guibg=" . background . " ctermfg=8 ctermbg=0"

" Spelling
exe "hi SpellBad guisp=" . red . " gui=undercurl ctermfg=1 cterm=underline"
exe "hi SpellCap guisp=" . blue . " gui=undercurl ctermfg=4 cterm=underline"
exe "hi SpellLocal guisp=" . cyan . " gui=undercurl ctermfg=6 cterm=underline"
exe "hi SpellRare guisp=" . magenta . " gui=undercurl ctermfg=5 cterm=underline"

" File explorer and tree colors
exe "hi Directory guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi NvimTreeFolderName guifg=" . blue . " ctermfg=4"
exe "hi NvimTreeFolderIcon guifg=" . blue . " ctermfg=4"
exe "hi NvimTreeOpenedFolderName guifg=" . br_blue . " gui=bold ctermfg=12 cterm=bold"
exe "hi NvimTreeFileName guifg=" . white . " ctermfg=7"
exe "hi NvimTreeExecFile guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi NvimTreeSpecialFile guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi NvimTreeImageFile guifg=" . cyan . " ctermfg=6"
exe "hi NvimTreeMarkdownFile guifg=" . red . " ctermfg=1"
exe "hi NvimTreeIndentMarker guifg=" . br_black . " ctermfg=8"

" Neo-tree colors
exe "hi NeoTreeDirectoryName guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeDirectoryIcon guifg=" . blue . " ctermfg=4"
exe "hi NeoTreeFileName guifg=" . white . " ctermfg=7"
exe "hi NeoTreeFileIcon guifg=" . cyan . " ctermfg=6"
exe "hi NeoTreeModified guifg=" . yellow . " ctermfg=3"
exe "hi NeoTreeGitAdded guifg=" . green . " ctermfg=2"
exe "hi NeoTreeGitDeleted guifg=" . red . " ctermfg=1"
exe "hi NeoTreeGitModified guifg=" . yellow . " ctermfg=3"
exe "hi NeoTreeGitUntracked guifg=" . br_black . " ctermfg=8"

" Telescope colors
exe "hi TelescopeSelection guifg=" . white . " guibg=" . br_black . " gui=bold ctermfg=7 ctermbg=8 cterm=bold"
exe "hi TelescopeSelectionCaret guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi TelescopeMultiSelection guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopeNormal guifg=" . white . " ctermfg=7"
exe "hi TelescopeBorder guifg=" . br_black . " ctermfg=8"
exe "hi TelescopePromptBorder guifg=" . blue . " ctermfg=4"
exe "hi TelescopeResultsBorder guifg=" . br_black . " ctermfg=8"
exe "hi TelescopePreviewBorder guifg=" . br_black . " ctermfg=8"
exe "hi TelescopeTitle guifg=" . white . " gui=bold ctermfg=7 cterm=bold"
exe "hi TelescopePromptTitle guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi TelescopeResultsTitle guifg=" . green . " gui=bold ctermfg=2 cterm=bold"
exe "hi TelescopePreviewTitle guifg=" . cyan . " gui=bold ctermfg=6 cterm=bold"

" LSP and diagnostic colors
exe "hi DiagnosticError guifg=" . red . " ctermfg=1"
exe "hi DiagnosticWarn guifg=" . yellow . " ctermfg=3"
exe "hi DiagnosticInfo guifg=" . blue . " ctermfg=4"
exe "hi DiagnosticHint guifg=" . br_black . " ctermfg=8"
exe "hi DiagnosticUnderlineError gui=undercurl guisp=" . red . " cterm=underline"
exe "hi DiagnosticUnderlineWarn gui=undercurl guisp=" . yellow . " cterm=underline"
exe "hi DiagnosticUnderlineInfo gui=undercurl guisp=" . blue . " cterm=underline"
exe "hi DiagnosticUnderlineHint gui=undercurl guisp=" . br_black . " cterm=underline"

" LSP semantic highlighting
exe "hi @variable guifg=" . white . " ctermfg=7"
exe "hi @variable.builtin guifg=" . magenta . " gui=italic ctermfg=5 cterm=italic"
exe "hi @variable.parameter guifg=" . white . " gui=italic ctermfg=7 cterm=italic"
exe "hi @constant guifg=" . magenta . " gui=bold ctermfg=5 cterm=bold"
exe "hi @constant.builtin guifg=" . magenta . " gui=bold,italic ctermfg=5 cterm=bold,italic"
exe "hi @constant.macro guifg=" . br_magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @string guifg=" . green . " ctermfg=2"
exe "hi @string.escape guifg=" . br_green . " gui=bold ctermfg=10 cterm=bold"
exe "hi @string.special guifg=" . cyan . " ctermfg=6"
exe "hi @character guifg=" . br_green . " ctermfg=10"
exe "hi @number guifg=" . cyan . " ctermfg=6"
exe "hi @boolean guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @float guifg=" . cyan . " ctermfg=6"
exe "hi @function guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @function.builtin guifg=" . red . " gui=bold,italic ctermfg=1 cterm=bold,italic"
exe "hi @function.macro guifg=" . br_red . " gui=bold ctermfg=9 cterm=bold"
exe "hi @method guifg=" . red . " ctermfg=1"
exe "hi @constructor guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @parameter guifg=" . white . " gui=italic ctermfg=7 cterm=italic"
exe "hi @keyword guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi @keyword.function guifg=" . blue . " gui=italic ctermfg=4 cterm=italic"
exe "hi @keyword.operator guifg=" . blue . " ctermfg=4"
exe "hi @keyword.return guifg=" . blue . " gui=bold ctermfg=4 cterm=bold"
exe "hi @conditional guifg=" . blue . " ctermfg=4"
exe "hi @repeat guifg=" . blue . " ctermfg=4"
exe "hi @label guifg=" . blue . " ctermfg=4"
exe "hi @operator guifg=" . white . " ctermfg=7"
exe "hi @exception guifg=" . red . " gui=bold ctermfg=1 cterm=bold"
exe "hi @type guifg=" . yellow . " gui=bold ctermfg=3 cterm=bold"
exe "hi @type.builtin guifg=" . yellow . " gui=bold,italic ctermfg=3 cterm=bold,italic"
exe "hi @type.definition guifg=" . yellow . " ctermfg=3"
exe "hi @storageclass guifg=" . yellow . " ctermfg=3"
exe "hi @structure guifg=" . yellow . " ctermfg=3"
exe "hi @namespace guifg=" . yellow . " gui=italic ctermfg=3 cterm=italic"
exe "hi @include guifg=" . br_magenta . " gui=bold ctermfg=13 cterm=bold"
exe "hi @preproc guifg=" . br_magenta . " ctermfg=13"
exe "hi @debug guifg=" . br_red . " ctermfg=9"
exe "hi @tag guifg=" . red . " ctermfg=1"
exe "hi @tag.attribute guifg=" . cyan . " ctermfg=6"
exe "hi @tag.delimiter guifg=" . white . " ctermfg=7"
exe "hi @comment guifg=" . br_black . " gui=italic ctermfg=8 cterm=italic"
exe "hi @comment.documentation guifg=" . br_yellow . " gui=italic ctermfg=11 cterm=italic"

" Treesitter context
exe "hi TreesitterContext guibg=" . br_black . " ctermbg=8"
exe "hi TreesitterContextLineNumber guifg=" . white . " gui=bold ctermfg=7 cterm=bold"