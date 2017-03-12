set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'altercation/vim-colors-solarized'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'vim-syntastic/syntastic'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-sensible'

Plugin 'valloric/youcompleteme'

Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}

Plugin 'majutsushi/tagbar'

Plugin 'kien/ctrlp.vim'

"Plugin 'octol/vim-cpp-enhanced-highlight'


call vundle#end()

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set number

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:solarized_termcolors=256

syntax enable
set background=dark
colorscheme solarized

autocmd VimEnter * nested :call tagbar#autoopen(1)

let g:nerdtree_tabs_open_on_console_startup=1
let g:airline#extensions#tabline#enabled = 1

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeTabsToggle<CR>
