filetype off                  " required

" set the runtime path to include vimplug and initialize
"
call plug#begin('~/.local/share/nvim/plugged')
" alternatively, pass a path where Vundle should install plugins

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'

Plug 'flazz/vim-colorschemes'

Plug 'davidhalter/jedi-vim'

Plug 'nvie/vim-flake8'

Plug 'ihacklog/HiCursorWords'

Plug 'scrooloose/nerdtree'

Plug 'itchyny/lightline.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'elzr/vim-json'

Plug 'majutsushi/tagbar'

Plug 'easymotion/vim-easymotion'

Plug 'vim-scripts/c.vim'

Plug 'fatih/vim-go'

Plug 'zchee/deoplete-go'

Plug 'Shougo/deoplete.nvim'

Plug 'metakirby5/codi.vim'


" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" Put your non-Plugin stuff after this line
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set expandtab |
  \ set colorcolumn=80 |
  \ let g:jedi#use_splits_not_buffers = "left" |
  \ let g:jedi#show_call_signatures = "1" |

" autocmd vimenter * NERDTree
" let g:NERDTreeWinPos = "right"

set number
set cursorline
set showmatch

set noshowmode

let mapleader=','
colorscheme brogrammer

set hlsearch
set incsearch

let g:HiCursorWords_delay = 100

imap <C-@> <C-Space>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set diffopt+=vertical
nmap <F8> :TagbarToggle<CR>
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout
let g:jedi#force_py_version = 3

tnoremap <Esc> <C-\><C-n>
