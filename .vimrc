".vimrc config // created by Syrochki

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" On-demand loading: loaded when the specified command is executed

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'sheerun/vim-polyglot'

Plug 'phanviet/vim-monokai-pro'

Plug 'joshdick/onedark.vim'

Plug 'junegunn/seoul256.vim'

Plug 'itchyny/lightline.vim'


" Call plug#end to update &runtimepath and initialize the plugin system.
" - It automatically executes `filetype plugin indent on` and `syntax enable`
call plug#end()
" Color schemes should be loaded after plug#end().


colorscheme monokai_pro

syntax on

set background=dark

set laststatus=2
set nocompatible
set termguicolors
set number
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set scrolloff=4
set noswapfile
set noshowmode
set showmatch
set hlsearch
set incsearch
set ignorecase
set nowrap
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

"mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
