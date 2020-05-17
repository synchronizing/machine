" ================
" == VIM CONFIG ==
" ================

" Basic Setup
	set nocompatible
	filetype plugin on

" Plugins
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" Plugin Manager
	Plugin 'VundleVim/Vundle.vim'

	" NerdTree
	Plugin 'preservim/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	Plugin 'jistr/vim-nerdtree-tabs'

	" Extensions
	Plugin 'vim-airline/vim-airline'
	Plugin 'majutsushi/tagbar'
	Plugin 'junegunn/goyo.vim'
	Plugin 'preservim/nerdcommenter'

	" Tmux
	Bundle 'christoomey/vim-tmux-navigator'
	Bundle 'edkolev/tmuxline.vim'

	" Syntax
	Plugin 'vim-python/python-syntax'

	" Theme
	Bundle 'sonph/onehalf', {'rtp': 'vim/'}
	call vundle#end()

" Theme
        syntax on
	colorscheme onehalfdark
        let g:airline_theme='onehalfdark'
	set number relativenumber
	let g:python_highlight_all = 1

" Remove Background
	hi Normal ctermbg=none
	highlight NonText ctermbg=none

" Tmux Line Seperators
	let g:tmuxline_separators = {
		\ 'left' : '',
		\ 'left_alt': '>',
		\ 'right' : '',
		\ 'right_alt' : '<',
		\ 'space' : ' '}
	let g:tmuxline_preset = {
		\'a'    : '#S',
		\'b'    : '#W',
		\'c'    : '',
		\'win'  : '#I #W',
		\'cwin' : '#I #W',
		\'x'    : '',
		\'y'    : '',
		\'z'    : ''}

" Adds EOF Character
	set virtualedit=onemore

" Enables Copy/Paste to Clipboard Register
	set clipboard=unnamed

" Disable Automatic Commenting
	autocmd Filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Split Bottom and Right
	set splitbelow splitright

" NerdTree
	autocmd BufEnter * lcd %:p:h
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1
	let NERDTreeShowLineNumbers = 1

" TagBar
	let g:tagbar_compact = 1

" Airline
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['%{getcwd()}'])
 	let g:airline_section_c = airline#section#create(['%t'])
	let g:airline_section_y = ""
	let g:airline_section_z = airline#section#create(['%{strftime("%A, %B %-d @ %-I:%M%p")}'])
	let g:airline_section_error = ""
	let g:airline_section_warning = ""

" Copy+Paste w/o Numbers
	set mouse+=a

" Makes backspace normal.
	set backspace=indent,eol,start

" Re-Mapping Leder
	let mapleader = " "

" Custom Mappings

	" Maps tree toggle to Space+q
	noremap <silent> <leader>\ :NERDTreeToggle<CR>

	" Maps Gogo.
	noremap <silent> <Leader>d :Goyo<CR>

	" Maps Tagbar
	noremap <silent> <Leader>/ :TagbarToggle<CR>

	" Maps write to Space+W
	noremap <leader>w :w<CR>

	" Maps escape to jj
	inoremap qq <esc>
	cnoremap qq <C-C>

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
