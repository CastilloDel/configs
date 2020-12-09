cal plug#begin('~/.local/share/nvim/plugged')

"GUI
Plug 'itchyny/lightline.vim'

"Git
Plug 'itchyny/vim-gitbranch'
Plug 'airblade/vim-gitgutter'

"Lang support
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Utilities
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'tpope/vim-commentary'

"Discord Rich presence
Plug 'hugolgst/vimsence'

call plug#end()


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

" rust.vim
filetype plugin indent on
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" go-vim
let g:go_fmt_command = "goimports"
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_functions_parameters = 1
let g:go_highlight_functions_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

" CoC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Jump to definition
nmap <silent> gd <Plug>(coc-definition)

hi Pmenu ctermbg=234 ctermfg=67
hi PmenuSel ctermbg=236 
set noshowmode
set updatetime=100

" GitGutter
set signcolumn=yes
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1

" lightline
let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

" Discord rich presence
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Working on: {}'
let g:vimsence_file_explorer_details = 'Looking for files'
let g:vimsence_custom_icons = {'filetype': 'iconname'}
