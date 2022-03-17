set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set showmatch
set cursorline
set noswapfile
set encoding=utf-8
set clipboard=unnamed
set nowrap
set completeopt-=preview
set termguicolors

syntax on

call plug#begin("~/.vim/plugged")
    " Colorschemes
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
    Plug 'arcticicestudio/nord-vim'
    Plug 'ghifarit53/tokyonight-vim'

    " Plugins
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --all' }
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
    Plug 'Raimondi/delimitMate'
call plug#end()

" colorscheme onehalfdark
" colorscheme nord
colorscheme tokyonight

autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let NERDTreeMinimalUI = 1
let mapleader = " "
let g:ycm_auto_hover = ''
let g:ycm_auto_trigger = 1
let g:ycm_python_interpreter_path='/usr/bin/python3'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
	\	'g:ycm_python_interpreter_path',
	\	'g:ycm_python_sys_path',
	\]

lua << EOF

require('gitsigns').setup()
require('lualine').setup()

EOF

" require('lualine').setup {
"     options = {
"         theme = 'onedark'
"     }
" }

command -nargs=1 Rename :YcmCompleter RefactorRename <args>
command -nargs=1 Search :YcmCompleter GoToSymbol <args>
command Type :YcmCompleter GetType
command Doc :YcmCompleter GetDoc
command Go :YcmCompleter GoToDefinition

command Tree :NERDTreeToggle

nnoremap <leader><Space> :YcmCompleter GoToDefinition<CR>
nnoremap <leader>p :YcmCompleter GetType<CR>
nnoremap <leader>d :YcmCompleter GetDoc<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

