# vimrc
My minimal vim setup

## requirements

* vim (obviously)
* vim-plug

## vim-plug
The simplest plug-in manager.

### Quick linux installation:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

[vim-plug repository](https://github.com/junegunn/vim-plug)

## explanation

### 1. line numbers
```vim
set number
"set relativenumber
```
Use line number, *relative* line number commented in case you prefer.

### 2. A few plug-ins
```vim
call plug#begin('~/.vim/plugged')

" Language Server Plug-in
" Run :LspInstallServer in a language buffer to install its server
Plug 'prabirshresth/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Basic autocompletion
Plug 'prabirshresth/asyncomplete.vim'
Plug 'prabirshresth/asyncomplete-lsp.vim'

" Fuzzy Finder for interactive quick file search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
```

### 3. Lsp configuration
```vim
set signcolumn=yes

highlight LspErrorText ctermfg=Red guifg=Red
highlight LspWarningText ctermfg=Yellow guifg=Yellow

sign define LspError text=E texthl=LspErrorText
sign define LspWarning text=W texthl=LspWarningText

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_virtual_text_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 1
```

### 4. Some custom shortcut
Remember that the specific terminal emulator and other programs can interfere.
I quit ghostty because it messed all my custom mapping, don't know exactly why :(
```vim
" define space as leader key
let mapleader = " "

" next and previous buffer (not so vital, sometimes i use C-i C-o)
nnoremap <leader>n :bne<CR>
nnoremap <leader>p :bpre<CR>

" write and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" f for fuzzy find
nnoremap <leader>f :call fzf#run({ 'sink': 'edit'})<CR>
```

## Bye
Vim and NVim customization got too complex in my opinion.  This works as a config backup for me and hope it is helpful to others.  
