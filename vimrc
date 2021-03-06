" Install Vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" Install plugins
silent! if plug#begin()
	" File traversal
	Plug 'kien/ctrlp.vim'
	Plug 'scrooloose/nerdtree'

	" LSP
	Plug 'sheerun/vim-polyglot'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'

	call plug#end()
endif

" Always show statusline
set laststatus=2

" Use 256 colors
set t_Co=256

" Diff colors
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black

" 80 column
set colorcolumn=80

" Numbers
set relativenumber
set cursorline

" Tabbing
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Force syntax highlighting
autocmd BufRead,BufNewFile *.gradle set filetype=groovy
autocmd BufReadPost,BufNewFile *.hh set syntax=php

" Vim window navigation
map<C-H> <C-W>h
map<C-J> <C-W>j
map<C-K> <C-W>k
map<C-L> <C-W>l

" NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Syntax highlighting
filetype plugin indent on
syntax enable

" Flow
let g:flow#autoclose=1

" Git gutter
let g:gitgutter_sign_column_always = 1

" Svelte
let g:svelte_preprocessor_tags = [
  \ { 'name': 'ts', 'tag': 'script', 'as': 'typescript' }
  \ ]
let g:svelte_preprocessors = ['ts']
