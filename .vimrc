autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set nu
syntax enable

call pathogen#infect()
set filetype=on
filetype plugin on
filetype indent on


colorscheme desert

set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set vb	

set textwidth=79

"status line stuff
":help statusline 
set laststatus=2
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P

"search stuff
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=79
" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set textwidth=79

"keyboard shortcuts
let mapleader = ","
nnoremap <Leader>n :NERDTreeToggle <CR>
nnoremap <Leader>v :e ~/.vimrc <CR>
nnoremap <Leader>s :source ~/.vimrc <CR>
nnoremap <Leader>c :!sh coverage.sh <CR>

"Supertab setting
let g:SuperTabDefaultCompletionType = "context"

"jsbeutify defines this already, I copied here for reference
"nnoremap <silent> <leader>ff :call g:Jsbeautify()<cr>
cabbr <expr> %% expand('%:p:h')
