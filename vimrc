execute pathogen#infect()
syntax on
colorscheme dracula
filetype plugin indent on
set tabstop=4
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

" - plugins

" -- syntastic
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
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python3_checkers = ['pylint']
let g:syntastic_haskell_checkers = ['hlint'] " sudo apt-get install hlint

" --

" -- nerdtree

" open nerdtree by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif 

" close tab if only window left is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" make it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" --

" -- ycm
let g:ycm_autoclose_preview_window_after_completion = 1

" --

" -- lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ]
      \   ],
      \   'right': [
      \         ['syntastic', 'lineinfo'],
      \         ['percent'],
      \         ['fileformat', 'fileencoding', 'filetype', 'syntastic']
      \   ]
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_function': {
      \   'gitbranch': 'Fugitive',
      \   'readonly': 'Readonly',
      \   'modified': 'Modified',
      \ },
\ }

" --- lightline helpers

" inspired by https://maxwell.ydns.eu/git/rnhmjoj/dotvim/src/commit/5a0e0b0665f98037cdec278307b84fd1b77ff203/lightline.vim
" adds octopus (branches -> tentacles) to fugitive component
function! Fugitive()
  let branch = '🐙 '.fugitive#head()
  return branch
endfunction

" idem, inspired by ^
" changes modified symbol
function! Modified()
  return &ft =~ 'help' ? '' : &modified ? '🖐️' : &modifiable ? '👌' : ''
endfunction

" changes readonly symbol
function! Readonly()
  return &ft !~? 'help' && &readonly ? '📖' : ''
endfunction

" ---

" --

" -

" - extra

" python
let g:pymode_python = 'python3'

" tmux enable true color
if exists('+termguicolors')
  set termguicolors
endif

" -

