" ** start of .vimrc config **

" =======================
" .vimrc config made by syrochki
" https://github.com/Syrochki/vimConfiguration
" =======================


" =======================
"     Plugins
" =======================
call plug#begin()

" Файловый менеджер
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Подсветка синтаксиса для множества языков
Plug 'sheerun/vim-polyglot'

" Цветовые схемы
Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'

" Лёгкий статусбар
Plug 'itchyny/lightline.vim'

" Git-интеграция
Plug 'tpope/vim-fugitive'

" Быстрый поиск файлов/строк
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" =======================
"     UI Settings
" =======================
syntax on                 " Подсветка синтаксиса
set termguicolors         " 24-битные цвета (iTerm2)
set background=dark       " Тёмный фон
colorscheme gruvbox       " Цветовая схема

set number                " Номера строк
set cursorline            " Подсветка текущей строки
set laststatus=2          " Всегда показывать статусбар
set noshowmode            " Не показывать -- INSERT 
set nowrap                " Не переносить строки автоматически
set scrolloff=4           " Минимум 4 строки вокруг курсора
set history=1000          " Длина истории команд
set mouse=a               " Поддержка мыши

" =======================
"     Indentation
" =======================
set expandtab             " Таб = пробелы
set tabstop=4             " Ширина таба = 4 пробела
set shiftwidth=4          " Отступ для >> и << = 4 пробела

" =======================
"     Search
" =======================
set hlsearch              " Подсвечивать найденное
set incsearch             " Подсветка во время ввода
set ignorecase            " Поиск без учёта регистра
set smartcase             " Если есть большие буквы → регистр учитывается

" =======================
"     Wildmenu
" =======================
set wildmenu              " Меню автодополнения
set wildmode=list:longest " Поведение как в bash/zsh

" =======================
"     Swap/backup
" =======================
set noswapfile            " Не создавать .swp файлы

" =======================
"     <leader> button
" =======================
let mapleader=" "        " Главная клавиша -- пробел

" =======================
"     Statusline (lightline)
" =======================
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" =======================
"     NERDTree Settings
" =======================
nnoremap <C-n> :NERDTree<CR>          " Открыть дерево
nnoremap <C-t> :NERDTreeToggle<CR>    " Переключить дерево
nnoremap <C-f> :NERDTreeFind<CR>      " Найти текущий файл

" Автооткрытие NERDTree при старте + возврат фокуса в редактор
autocmd VimEnter * NERDTree | wincmd p
autocmd BufWinEnter * if bufname('#') =~ 'NERD_tree_' | wincmd p | endif

" Закрыть vim, если остался только NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

" =======================
"     Window Navigation
" =======================
" Переключение между окнами (Ctrl + hjkl)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Ресайз окон
nnoremap <silent> wh :vertical resize -2<CR>
nnoremap <silent> wj :resize -2<CR>
nnoremap <silent> wk :resize +2<CR>
nnoremap <silent> wl :vertical resize<CR>

" Переключение между табами <leader> + n(цифра вкладки)
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt

"
" =======================
"     FZF Shortcuts
" =======================
nnoremap <C-p> :Files<CR>        " Поиск файлов
nnoremap <leader>g :GFiles<CR>   " Поиск файлов из git
nnoremap <leader>b :Buffers<CR>  " Список открытых буферов
nnoremap <leader>l :Lines<CR>    " Поиск по строкам в открытых файлах

" ** end of .vimrc config **
