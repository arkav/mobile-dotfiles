call plug#begin('~/.vim/plugins')
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'rust-lang/rust.vim'
call plug#end() " End plugins
colorscheme dracula " set color scheme
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
