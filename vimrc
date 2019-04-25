" whitespace
set expandtab                         " use tabs instead of spaces
set nojoinspaces                      " use one space, not two, after punctuation
set shiftround                        " shift to next tabstop
set shiftwidth=4                      " amount of space used for indentation
set softtabstop=4                     " appearance of tabs
set tabstop=4                         " use two spaces for tabs

" My Theme Choice
filetype on
syntax on
"colorscheme 


call plug#begin('~/.vim/plugged')
    Plug 'scrooloose/nerdtree'
    Plug 'itchyny/lightline.vim'    
    Plug 'chriskempson/base16-vim'  
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'scrooloose/nerdcommenter'
    Plug 'w0rp/ale'
call plug#end() 

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode

filetype plugin on

" map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'               " hit the right arrow to open a node
let NERDTreeShowHidden=1                            " display hidden files
nmap <c-n> :NERDTreeToggle<CR>                      " toggle display of the tree with <Leader> + n
nmap <c-j> :NERDTreeFind<CR>                        " locate the focused file in the tree with <Leader> + j
autocmd VimEnter * NERDTree                         " always open the tree when booting Vim, but don’t focus it
autocmd VimEnter * wincmd p                         " always open the tree when booting Vim, but don’t focus it
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']   " do not display some useless files in the tree
