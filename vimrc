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
let g:syntastic_check_on_w = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_c_checkers = ['avrgcc'] ", 'gcc']
let g:syntastic_cpp_checkers = ['cppcheck'] " sudo apt-get install cppcheck
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues'] " OmniSharp thing, see https://github.com/OmniSharp/omnisharp-vim#example-vimrc
let g:syntastic_javascript_checkers = ['eslint'] " To use es6 with React and the linter, do: https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
let g:syntastic_json_checkers = ['eslint'] " ?? This not working, why???
let g:syntastic_python3_checkers = ['flake8']
let g:syntastic_haskell_checkers = ['hlint'] " sudo apt-get install hlint

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

" python
let g:pymode_python = 'python3'

