"set number
set hidden
set relativenumber
set hlsearch

call plug#begin('~/.vim/plugged')

Plug 'prabirshresth/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'prabirshresth/asyncomplete.vim'
Plug 'prabirshresth/asyncomplete-lsp.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set signcolumn=yes

highlight LspErrorText ctermfg=Red guifg=Red
highlight LspWarningText ctermfg=Yellow guifg=Yellow 

sign define LspError text=E texthl=LspErrorText
sign define LspWarning text=W texthl=LspWarningText

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_virtual_text_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 1


let mapleader = " "

nnoremap <leader>n :bne!<CR>
nnoremap <leader>p :bpre!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>t :term<CR>

nnoremap <leader>f :call fzf#run({ 'sink': 'edit'})<CR>
