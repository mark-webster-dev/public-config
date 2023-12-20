let g:maplocalleader = ","
let g:mapleader = ","
nnoremap <leader>a :echo("\<leader\> works! It is set to <leader>")<CR>

" Configuration file for vim
set modelines=0		" CVE-2007-2438

set mouse=a
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

filetype on " detect file types

filetype plugin on " Enable plugins and load plugin for the detected file type.

" Load an indent file for the detected file type.
filetype indent on

syntax on

set timeoutlen=500

set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

set pythonthreedll=/Users/markwebster/anaconda3/bin/python3

colorscheme molokai

let skip_defaults_vim=1

" let g:chat_gpt_model='gpt-4'
let g:chat_gpt_split_direction = 'vertical'

let g:NERDCreateDefaultMappings = 1
let g:NERDCommentEmptyLines = 1

set showcmd 

nnoremap <leader>w <C-w><C-w>

vnoremap <leader>c "+y<Esc>

set foldmethod=indent

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')


  Plug 'dense-analysis/ale'

  Plug 'preservim/nerdtree'

  Plug 'madox2/vim-ai'

  Plug 'github/copilot.vim'

  Plug 'preservim/nerdcommenter'

  Plug 'jiangmiao/auto-pairs'

  Plug 'honza/vim-snippets'

call plug#end()

" }}}

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | wincmd p | endif


nmap <F6> :NERDTreeToggle<CR>   " open or close nerd tree by pressing F6

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
