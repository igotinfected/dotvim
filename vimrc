execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set noshowmode

" --- plugins ---

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" inline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" ycm
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" dash
let g:dash_activate = 0
