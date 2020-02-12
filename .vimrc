call plug#begin('~/.vim/plugins')
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'https://gitlab.com/maister/skyline.vim'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
call plug#end() " End plugins
" dont work on mobile
let g:dracula_italic = 0
let g:dracula_colorterm = 0
let g:skyline_line_number = 1
colorscheme dracula
" go langserver
if executable('gopls')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'gopls',
		\ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
		\ 'whitelist': ['go'],
		\ })
	autocmd BufWritePre *.go LspDocumentFormatSync
endif
" styleize language hinting

let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

let g:lsp_signs_error = {'text': '✗'}
nnoremap <NUL> :LspCodeAction<CR>
