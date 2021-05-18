set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'gruvbox-material/vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/taglist.vim'
" nerdtree installation files Begin
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdtree-project-plugin'
Plugin 'PhilRunninger/nerdtree-buffer-ops'
Plugin 'PhilRunninger/nerdtree-visual-selection'
Plugin 'puremourning/vimspector'
Plugin 'myusuf3/numbers.vim'
Plugin 'szw/vim-maximizer'
Plugin 'justinmk/vim-sneak'
Plugin 'junegunn/fzf', {'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" nerdtree installation files End

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:gruvbox_italic=1
let g:gruvbox_material_background = 'soft'
colorscheme gruvbox-material
set termguicolors
set background=dark
let g:airline_theme = 'gruvbox_material'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:Powerline_symbols = 'fancy'

" command remap for vim
" 
nnoremap <silent> <F8> :TlistToggle<CR>
" vimspector setup for debugging c++ code
"
let g:vimspector_enable_mappings = 'HUMAN'
"nmap <leader>dd

" vimnumbers setup
"
nnoremap <silent> <F3> :NumbersToggle<CR>
nnoremap <silent> <F4> :NumbersOnOff<CR>

