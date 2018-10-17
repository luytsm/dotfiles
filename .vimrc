set nocompatible              
filetype off                 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ap/vim-buftabline'
Plugin 'suan/vim-instant-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'fatih/vim-go'
Plugin 'junegunn/vim-easy-align'
Plugin 'junegunn/goyo.vim'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

call vundle#end()          
filetype plugin indent on  
syntax on


let g:deoplete#enable_at_startup = 1 

colorscheme default
set background=dark

set hidden
set t_Co=256
set number
set encoding=utf-8
set shell=bash\ -i
set mouse=a
set noswapfile
set scrolloff=5

set nowrap

let loaded_matchparen = 1

"Tab Settings
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set clipboard=unnamed
set showmatch  
set ignorecase

"Fold Settigs
set foldmethod=indent
set nofoldenable

let g:instant_markdown_autostart = 0

let mapleader=' '
inoremap jj <ESC>
imap hh <C-y>,
:map <F7> z=
:map <F8> zg
:map <C-o> :NERDTreeToggle<CR>
:imap <F10> <Esc>gqgjkA
map <F11> :call NumberSlides()<CR>
map <F12> :call RenumberSlides()<CR>


function! NumberSlides(...)
  let i=1 | %g/<section/ s/<section>/\="<section id=\"".i."\">"/ | let i+=1 
endfunction

function! RenumberSlides(...)
  :let i=1 | %g/<section/ s/<section id="\d\{}">\|<section>/\="<section id=\"".i."\">"/ | let i+=1 
endfunction

set scrolloff=5

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Q> bp \| bd # 
nmap ll ^v$h<C-y>,h4<CR>
vmap <C-h> y:%s/<C-r>"/
nmap ff yiw/<C-r>"<CR>
nmap gf yiw:GrepperGrep <C-r>"<CR>
nmap gs  <plug>(GrepperOperator)
nmap fg yiw:GrepperGrep
nmap gn :cn<CR>
nmap gp :cp<CR>
nmap gc :ccl<CR>

set splitbelow
set splitright

"let NERDTreeQuitOnOpen=1
set clipboard=unnamedplus
set spelllang=nl

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-w> :bp\|bd #<CR>

let g:jsx_ext_required = 0

highlight Pmenu ctermfg=7 ctermbg=8
highlight PmenuSel ctermfg=7 ctermbg=6

highlight BufTabLineFill ctermfg=7
highlight BufTabLineHidden ctermbg=8

let g:SuperTabDefaultCompletionType = "context"
augroup vagrant
  au!
    au BufRead,BufNewFile Vagrantfile set filetype=ruby
  augroup END

let g:table_mode_corner='|'
