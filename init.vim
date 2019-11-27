call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'

call plug#end()

" enables auto-completion at startup
let g:deoplete#enable_at_startup = 1

" Plug 'davidhalter/jedi-vim'
" disable jedi-vim auto-completion, because we use deoplete for
" auto-completion
" let g:jedi#completions_enabled = 0
" open the goto functions in the split, not in the buffer
" let g:jedi#use_splits_not_buffers = "right"

" close auto-completion window when done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

set t_Co=256
" airline-theme
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" nerdcommenter: <leader>cc to comment single line, for uncomment use
" <leader>cu. Default <leader> key is '/'.

" neoformat: in command mode input 'Neoformat'
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimming of trailing whitespace
let g:neoformat_basic_format_trim = 1
let g:neoformat_enabled_python = ['black']
let g:neoformat_python_black = {
		\ 'exe': 'black',
		\ 'args': ['-l 80'],
		\ 'replace': 1, " replace the file instead of updating the buffer
		\ 'stdin': 1, " send data to stdin of formatter
}

" neomake: for code checking, stackoverflow: how to setup neomake with Python 
let g:neomake_python_enabled_makers = ['flake8']
" use command "Neomake" for code checking, else below line does the automatic code checking 
call neomake#configure#automake('nrwi', 500)

" gruvbox theme
colorscheme gruvbox
set background=dark


" Change the default splits for 'sp' and 'vs' commands
set splitbelow
set splitright

" Vim has it own clipboard, if you want to copy paste from system clipboard
set clipboard=unnamed

" Open NerdTree automatically while opening vim
autocmd VimEnter * NERDTree

" Make code look pretty
let python_highlight_all=1

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

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" color desert
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" search starts from the first typing character and it is refined as we type the
" full string
:set incsearch
" highlight the search
:set hlsearch
set mouse=a

" REFERENCES
" jdhao.github.io/2018/12/24/centos_nvim_install_use_guide_en/
