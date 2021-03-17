source $HOME/.config/nvim/vim-plug/plugins.vim
"when using iterm2 turn on termguicolors
set termguicolors
set guicursor=a:block
set background=dark
syntax on
colorscheme sonokai
set shiftwidth=4 autoindent
set number
set laststatus=2
set showtabline=2
set path=.,,**
set hidden
set nowrap
set noshowmode
set cursorline
set mouse=a
set smartindent
set expandtab
set smarttab
set nobackup
set nowritebackup
set clipboard=unnamedplus

nnoremap <C-Right> :tabprevious<CR>
nnoremap <C-Left> :tabnext<CR>

au! BufWritePost $MYVIMRC source %

"ale configurations
let g:ale_lint_on_text_changed = 'always'
let g:ale_sign_error = "\uf00d"
let g:ale_sign_warning = "\uf129"
let g:ale_echo_delay = 0
let g:ale_echo_msg_error_str = 'ERROR'
let g:ale_echo_msg_warning_str = 'WARNING'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_virtualtext_delay = 10
let g:ale_virtualtext_prefix = '▸'
let g:ale_floating_preview = 1

"lightline configurations
let g:lightline = {}
let g:lightline.colorscheme = 'sonokai'
let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
let g:lightline.active = {
        \ 'left': [ [ 'mode' ],
        \           [ 'readonly', 'filename', 'modified' ],
        \           [ 'charvaluehex' ] ],
        \ 'right': [ [ 'lineinfo' ], [ 'fileformat','fileencoding','filetype' ],
        \            [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ] ]
        \ }
let g:lightline.inactive = {
        \ 'left': [ [ 'filename' , 'modified' ],
        \           [ 'charvaluehex' ] ],
        \ 'right': [ [ 'lineinfo' ], [ 'fileformat','fileencoding', 'filetype' ],
        \            [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ] ]
        \ }
let g:lightline.tabline = {
        \ 'left': [ [ 'vim_logo', 'tabs' ] ],
        \ 'right': [ [ 'close' ] ] 
        \ }
let g:lightline.tab = {
        \ 'active': [ 'tabnum', 'filename', 'modified' ],
        \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
"alternate file format definition
" 'fileformat': '%{&fenc!=#""?&fenc:&enc}[%{&ff}]'
let g:lightline.component = {
      \ 'bufinfo': '%{bufname("%")}:%{bufnr("%")}',
      \ 'vim_logo': "\uf27d",
      \ 'line_logo': "\uf0c9",
      \ 'mode': '%{lightline#mode()}',
      \ 'absolutepath': '%F',
      \ 'relativepath': '%f',
      \ 'filename': '%t',
      \ 'fileencoding': '%{&fenc!=#""?&fenc:&enc}',
      \ 'fileformat': '%{&ff}',
      \ 'filetype': '%{&ft!=#""?&ft:"no ft"}',
      \ 'modified': '%M',
      \ 'bufnum': '%n',
      \ 'paste': '%{&paste?"PASTE":""}',
      \ 'readonly': '%R',
      \ 'charvalue': '%b',
      \ 'charvaluehex': '0x%B',
      \ 'percent': '%3p%%',
      \ 'percentwin': '%P',
      \ 'spell': '%{&spell?&spelllang:""}',
      \ 'lineinfo': '%3p%% %3l:%-2c '."\uf0c9",
      \ 'line': '%l',
      \ 'column': '%c',
      \ 'close': '%999X '."\uf00d".' ',
      \ 'winnr': '%{winnr()}'
      \ }
let g:lightline.component_expand = {
      \ 'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \ 'linter_warnings': 'lightline#ale#warnings',
      \ 'linter_errors': 'lightline#ale#errors',
      \ 'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \  'linter_checking': 'right',
      \  'linter_infos': 'right',
      \ 'linter_warnings': 'warning',
      \ 'linter_errors': 'error', 
      \ 'linter_ok': 'right'
      \ }
