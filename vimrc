"thongen begin
execute pathogen#infect()
syntax enable
filetype plugin indent on
call pathogen#helptags()
""""""" pathogen end

"""" airline begin
" always show status bar
set laststatus=2
" declare airline symbol list
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
" airline colorscheme/theme
let g:airline_theme='gruvbox'
"""" airline end

"""" ultsnips begin
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/bundle/ultiSnips/syntax', 'UltiSnips']
"""" ultsnips end

"""" easymotion begin
map <leader> <plug>(easymotion-prefix)
"""" easymotion end

"""" sneak begin
"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
"""" sneak end

"""" nerdtree begin
nmap <C-m>tr :NERDTreeToggle<cr>
"""" nerdtree end

"""" DISPLAY SETTINGS begin
set showcmd "show vim commands as they're typed
set number "show line number
set relativenumber "show relative line numbering
set hlsearch " set hlsearch
" set 256 colors available
set t_Co=256
" non-printable character display settings when :set list
set lcs=space:·,tab:»»,eol:↵
hi NonText ctermfg=0 guifg=gray
hi SpecialKey ctermfg=0 guifg=gray
" let lines wrap at the indentation of beginning of the line being wrapped
set breakindent
set background=dark
colorscheme gruvbox
"""" DISPLAY SETTINGS end

""""""" plugin-related settings begin
" let vim detect filetype. needed or some plugins
filetype plugin on
""""""" plugin-related settings end

""""""" search settings begin
" this mapping causes vim to startup with c pressed
nnoremap <esc> <esc>:noh<cr>:<bs><esc>hl
" but neovim doesn't have this issue
""""""" search settings end

""""""" clipboard settings begin
" set <C-c> to paste-to-clipboard in insert mode
inoremap <C-c> <esc>"+pa
" set <C-c> to copy-to-clipboard in visual mode
vnoremap <C-c> "+y
" ensure that clipboard = the unnamed register
set clipboard=unnamed
""""""" clipboard settings end

""""""" terminal emulator settings begin
" let C-w work as it normall does even in terminal mode
tnoremap <C-w> <C-\><C-n><C-w>
tnoremap <Esc><Esc> <C-\><C-n>
""""""" terminal emulator settings end

" set ':es' to perl 'e'xtended regex 's'earch and replace
cnoremap es/ perldo<space>s/

" <C-m> is 'm'y namespace
noremap <C-m>hls :set hlsearch!<CR>
noremap <C-m>rn :set relativenumber!<CR>
noremap <C-m>lcs :set list!<CR>
noremap <C-m>esc :set esckeys!<CR>
nmap <C-m>sn :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif <CR>
nmap <C-m>lv :vs term://bash<CR>
nmap <C-m>ll :sp term://bash<CR>
nmap <C-m>rr :bufdo e<CR>

" tab settings
set tabstop=8     "The width of a TAB is set to 4, but is still \lt
set shiftwidth=4  "Indents will have a width of 4
set softtabstop=8 "Sets the number of columns for a TAB
set expandtab     "Expand TABs to spaces

" :split opens to the right or below
set splitright
set splitbelow

" let % jump to closing tag in html on top of usual functionality
runtime macros/matchit.vim

" code folding settings
set foldmethod=indent
set nofoldenable"""""" pathongen begin
execute pathogen#infect()
syntax enable
filetype plugin indent on
call pathogen#helptags()
""""""" pathogen end

"""" airline begin
" always show status bar
set laststatus=2
" declare airline symbol list
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
" airline colorscheme/theme
let g:airline_theme='gruvbox'
"""" airline end

"""" ultsnips begin
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsSnippetDirectories = ['~/.vim/bundle/ultiSnips/syntax', 'UltiSnips']
"""" ultsnips end

"""" easymotion begin
map <leader> <plug>(easymotion-prefix)
"""" easymotion end

"""" sneak begin
"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
"""" sneak end

"""" nerdtree begin
nmap <C-m>tr :NERDTreeToggle<cr>
"""" nerdtree end

"""" DISPLAY SETTINGS begin
set showcmd "show vim commands as they're typed
set number "show line number
set relativenumber "show relative line numbering
set hlsearch " set hlsearch
" set 256 colors available
set t_Co=256
" non-printable character display settings when :set list
set lcs=space:·,tab:»»,eol:↵
hi NonText ctermfg=0 guifg=gray
hi SpecialKey ctermfg=0 guifg=gray
" let lines wrap at the indentation of beginning of the line being wrapped
set breakindent
set background=dark
colorscheme gruvbox
"""" DISPLAY SETTINGS end

""""""" plugin-related settings begin
" let vim detect filetype. needed or some plugins
filetype plugin on
""""""" plugin-related settings end

""""""" search settings begin
" this mapping causes vim to startup with c pressed
nnoremap <esc> <esc>:noh<cr>:<bs><esc>hl
" but neovim doesn't have this issue
""""""" search settings end

""""""" clipboard settings begin
" set <C-c> to paste-to-clipboard in insert mode
inoremap <C-c> <esc>"+pa
" set <C-c> to copy-to-clipboard in visual mode
vnoremap <C-c> "+y
" ensure that clipboard = the unnamed register
set clipboard=unnamed
""""""" clipboard settings end

""""""" terminal emulator settings begin
" let C-w work as it normall does even in terminal mode
tnoremap <C-w> <C-\><C-n><C-w>
tnoremap <Esc><Esc> <C-\><C-n>
""""""" terminal emulator settings end

" set ':es' to perl 'e'xtended regex 's'earch and replace
cnoremap es/ perldo<space>s/

" <C-m> is 'm'y namespace
noremap <C-m>hls :set hlsearch!<CR>
noremap <C-m>rn :set relativenumber!<CR>
noremap <C-m>lcs :set list!<CR>
noremap <C-m>esc :set esckeys!<CR>
nmap <C-m>sn :if exists("g:syntax_on") <Bar> syntax off <Bar> else <Bar> syntax enable <Bar> endif <CR>
nmap <C-m>lv :vs term://bash<CR>
nmap <C-m>ll :sp term://bash<CR>
nmap <C-m>rr :bufdo e<CR>

" tab settings
set tabstop=8     "The width of a TAB is set to 4, but is still \lt
set shiftwidth=4  "Indents will have a width of 4
set softtabstop=8 "Sets the number of columns for a TAB
set expandtab     "Expand TABs to spaces

" :split opens to the right or below
set splitright
set splitbelow

" let % jump to closing tag in html on top of usual functionality
runtime macros/matchit.vim

" code folding settings
set foldmethod=indent
set nofoldenable
