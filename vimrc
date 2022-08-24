set encoding=utf-8
scriptencoding utf-8
execute pathogen#infect()
syntax enable
filetype plugin indent on
call pathogen#helptags()

set laststatus=2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_theme='gruvbox'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/bundle/ultiSnips/syntax', 'UltiSnips']

map <leader> <plug>(easymotion-prefix)

nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

" nmap <C-m>tr :NERDTreeToggle<cr>
" NERDTree
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"
let g:NERDTreeMapOpenSplit="<F3>"

set showcmd
set number
set relativenumber
set hlsearch
set t_Co=256
set lcs=space:·,tab:»»,eol:↵
hi NonText ctermfg=0 guifg=gray
hi SpecialKey ctermfg=0 guifg=gray
set breakindent
set background=dark
colorscheme gruvbox

filetype plugin on

"nnoremap <esc> <esc>:noh<cr>:<bs><esc>hl

inoremap <C-c> <esc>"+pa
vnoremap <C-c> "+y
set clipboard=unnamed

tnoremap <C-w> <C-\><C-n><C-w>
tnoremap <Esc><Esc> <C-\><C-n>

cnoremap es/ perldo<space>s/

noremap <C-m>hls :set hlsearch!<CR>
noremap <C-m>rn :set relativenumber!<CR>
noremap <C-m>lcs :set list!<CR>
noremap <C-m>esc :set esckeys!<CR>
nmap <C-m>sn :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif <CR>
nmap <C-m>lv :vs term://bash<CR>
nmap <C-m>ll :sp term://bash<CR>
nmap <C-m>rr :bufdo e<CR>

set tabstop=8   
set shiftwidth=4  
set softtabstop=8 
set expandtab     

set splitright
set splitbelow

runtime macros/matchit.vim

set foldmethod=indent
set nofoldenable

call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'mattn/vim-lsp-settings'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production '}
call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]

" Use <C-k> to trigger completion.
inoremap <silent><expr> <C-k> coc#refresh()
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Eslint Autofix
nnoremap <leader>aa  <Plug>(coc-codeaction)
