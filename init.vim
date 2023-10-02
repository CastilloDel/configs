
set hidden
set expandtab 
set rnu
set nu
set sw=4
set sts=4
set ts=4
set mouse=a
set ai
set signcolumn=yes
syntax on

let mapleader = " " " map leader to space
set timeoutlen=350

"Key bindings
map <leader>w :w<CR>
map <leader>q :q<CR>
map <leader>wq :wq<CR>
map <leader>qw :wq<CR>
map <leader>f :FZF<CR>
map <leader>n :NERDTreeToggle<CR>
imap jk <Esc>
imap kj <Esc>

" Permanent undo
set undodir=~/.config/.vimdid
set undofile

" Ignore case in search
set ignorecase
set smartcase

" Move by line
nnoremap j gj
nnoremap k gk

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
