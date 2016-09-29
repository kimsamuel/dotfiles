set nocompatible
set t_Co=256
filetype plugin on
syntax on
set number showcmd
set noerrorbells visualbell t_vb=
set shortmess+=I
set guifont=Consolas\ Regular\ 15
set shiftwidth=4 tabstop=4
set ttyfast
set mouse=a
set ttymouse=xterm
"autocmd GUIEnter * highlight SignColumn guibg=#
autocmd GUIEnter * set visualbell t_vb=
autocmd BufEnter * silent! lcd %:p:h
autocmd GUIEnter * AirlineTheme bubblegum
"autocmd BufNewFile,BufRead *.tex set breakindent
"autocmd BufNewFile,BufRead *.tex set sw=2
"autocmd BufNewFile,BufRead *.tex set iskeyword+=:

call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'kshenoy/vim-signature'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Colorscheme: vim / gvim colorscheme
if has('gui_running')
	colorscheme gruvbox
	set background=light
else
	if filereadable(expand("~/.vimrc_background"))
		let base16colorspace=256
		source ~/.vimrc_background
	endif
endif

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
"set grepprg=grep\ -nH\ $* 

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'

"Search_mapping: Search will center on the line that it is found on
map N Nzz
map n nzz
