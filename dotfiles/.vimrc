" ================
" == VIM CONFIG ==
" ================

" Basic Setup
	set nocompatible
	filetype off

" Plugins
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'preservim/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'danilo-augusto/vim-afterglow'
	Plugin 'vim-python/python-syntax'
	Plugin 'junegunn/goyo.vim'
	Plugin 'vim-airline/vim-airline'
	Bundle 'sonph/onehalf', {'rtp': 'vim/'}
	Bundle 'christoomey/vim-tmux-navigator'
	Bundle 'edkolev/tmuxline.vim'
	call vundle#end()

" Theme
        syntax on
	colorscheme onehalfdark
        let g:airline_theme='onehalfdark'
	set number relativenumber

" Tmux Line Seperators
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

" Adds EOF Character
	set virtualedit=onemore

" Enables Copy/Paste to Clipboard Register
	set clipboard=unnamed

" Disable Automatic Commenting
	autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split Bottom and Right
	set splitbelow splitright

" NerdTree
	autocmd vimenter * NERDTree
	autocmd vimenter * NERDTree
	autocmd BufEnter * lcd %:p:h
	let NERDTreeMinimalUI = 1
	let NERDTreeQuitOnOpen = 1
	let NERDTreeDirArrows = 1

" Copy+Paste w/o Numbers
	set mouse+=a

" Re-Mapping Leder
	let mapleader = " "

" Custom Mappings

	" Maps tree toggle to Space+q
	noremap <leader>q :NERDTreeToggle<CR> 
	nnoremap <silent> <Leader>v :NERDTreeFind<CR>

	" Maps write to Space+W
	noremap <leader>w :w<CR>

	" Mapping Skipps
	noremap <silent> <leader>j :+5<CR>
	noremap <silent> <leader>k :-5<CR>

	" Mapping End/Beginning of Sentence Skips
	noremap <leader>l <ESC>$l
	noremap <leader>h <ESC>0
 
	" Maps escape to jj
	inoremap jj <esc>
	cnoremap jj <C-C>

	" Window Moving 
	nnoremap <C-J> <C-W>j
	nnoremap <C-K> <C-W>k
	nnoremap <C-L> <C-W>l
	nnoremap <C-H> <C-W>h

	" Hardcore Mode (Disable Arrow Keys)
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop> 
