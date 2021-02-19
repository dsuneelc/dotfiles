syntax enable                      " Enable syntax highlighting
set virtualedit=onemore            " Add extra column at end of line for cursor
set relativenumber number          " Relative numbering for file
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set mouse=a                        " Enbale mouse in vim/nvim
set cursorline                     " Display horizantal line at cursor
set textwidth=110                  " Max textwidth  
set nowrap                         " Display long lines as just one line
set fileencoding=utf-8             " The encoding written to file
set splitbelow splitright          " Horizantal split will be below and vertical split will be on the right
set t_Co=256                       " Support 256 colors
set autoindent
set noshowmode                     " We don't need things like, -- INSERT --
set signcolumn=yes                 " Always show the sign column
set clipboard=unnamedplus          " Copy & paste b/w vim and everything else
set incsearch
" set guifont=JetBrainsMono\ Nerd\ Font

" ###########################################################################################################
"                                           KEY MAPPINGS                                                    # 
" ###########################################################################################################
let mapleader=','                  " Maps leader key to ,
" Remapping escape
inoremap jj <ESC>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Tabbed panes controls
nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit
nnoremap tm :tabm<CR>
nnoremap td :tabclose<CR>

" TAB in general mode will move to text buffer
nnoremap <C-TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <C-S-TAB> :bprevious<CR>

" Split navigations
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <ESC> <C-\><C-n>

" Adjusting split sizes, Ctrl + hjkl
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" Change 2 splits from horizantal -> vertical & vice-versa
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Terminal
map <silent> <Leader>t :sp<bar>resize 12<bar>term<CR>
