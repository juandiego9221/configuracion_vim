" A minimal vimrc for new vim users to start with.

""CONFIGURACION DE PLUGIN
" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" " Make sure you use single quotes
"
"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'  }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure'  }
"
"" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'  }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*'  }
"
"" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim'  }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
"
"" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Fold
Plug 'tmhedberg/SimpylFold'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
"Plug 'jnurmine/Zenburn'
"Plug 'altercation/vim-colors-solarized'
"Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'ajmwagar/vim-deus'

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

Plug 'Shougo/unite.vim' 
Plug 'Shougo/vimfiler.vim'
Plug 'mattn/emmet-vim'


call plug#end()"


" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:	 Bram Moolenaar <Bram@vim.org>
"" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.
" Switch syntax highlighting on
let python_highlight_all=1
set t_Co=256
syntax on
" seteo de numero de linea relativo
set number
set relativenumber
" Make backspace behave in a sane manner.	
set backspace=indent,eol,start
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
"CONFIGURACION JUANDIEGO
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Enable folding
"set foldmethod=indent
"set foldlevel=99

"clipboard
set clipboard=unnamed

"Enable folding with the spacebar
"nnoremap <space> za


au BufEnter,BufRead *.ts set filetype=javascript
au BufNewFile,BufRead *.js, *.html, *.css
     set tabstop=2
     set softtabstop=2
     set shiftwidth=2


"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


colorscheme deus

"autocmd vimenter * NERDTree
"let g:vimfiler_as_default_explorer = 1

