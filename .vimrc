" Vundle configuration
set nocompatible	" required 
filetype off		" required

" Set the runtime path to include Vundle and initialize 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" add all your plugins here (note older version of Vundle used
" Bundle instead of Plugin)
" ...
" All of your plugins must be added before the following line
call vundle#end()	" required
filetype plugin indent on	" required

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable case folding in python, press za to fold
set foldmethod=indent
set foldlevel=99
" Enable folding with a spacebar
nnoremap <space> za

" Change the default splits for 'sp' and 'vs' commands
set splitbelow
set splitright

" PEP 8 indentation
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=120 |
	\ set expandtab |
	\ set fileformat=unix

" Flagging unnecessary whitespace in Red
highlight BadWhitespace ctermbg=red guibg=darkred
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Set encoding to utf-8
set encoding=utf-8

" Below code ensures, vimrc and YouCompleteMe are aware of virtual enviroment you are using.
" Python with virtual environment support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" Make code look pretty
let python_highlight_all=1

" Solarized color scheme setting
set t_Co=256
syntax on
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" Airline Theme
let g:airline_theme='base16'

" Change the color-scheme based on operating mode
" if has('gui_running')
" 	set background=dark
" 	colorscheme solarized
" else
" 	set background=dark
" 	colorscheme solarized
" " colorscheme zenburn
" endif

" Vim has it own clipboard, if you want to copy paste from system clipboard
set clipboard=unnamed

" Open NerdTree automatically while opening vim
autocmd VimEnter * NERDTree

set virtualedit=onemore
set relativenumber number

inoremap jj <ESC>
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit
nnoremap tm :tabm<CR>
nnoremap td :tabclose<CR>
" color desert
set tabstop=4
" search starts from the first typing character and it is refined as we type the
" full string
:set incsearch
" highlight the search
:set hlsearch
" for C type indentation
:set cindent
:set textwidth=120
:iabbrev #h ------------------------------------------------------------------------------------------------------------------------
:iabbrev #l <space>------------------------------------------------------------------------------------------------------------------------
:iabbrev #b ------------------------------------------------------------------------------------------------------------------------
" :abbreviate is for both insert and command mode, :iabbrev is only for insert
" mode, :cabbrev is only for command mode, :abbreviate command lists the
" abbreviations
set mouse=a
" enables mouse in vim
" imap <C-n> <ESC>:action HippieCompletion<CR>a
" imap <C-p> <ESC>:action HippieBackwardCompletion<CR>a


