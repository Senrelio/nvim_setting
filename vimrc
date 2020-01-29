set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath+=~/.vim/pack/plugin/start/LanguageClient-neovim
let &packpath = &runtimepath

set path+=**

let mapleader=' '

colorscheme tomorrow-night-eighties
syntax enable

set tabstop=4
set autoindent
set softtabstop=4
set shiftwidth=4
set smartindent
set expandtab

set number
set relativenumber
set signcolumn=yes
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set ignorecase

set incsearch
set hlsearch

" customized shortcut
nnoremap <leader>h :noh<return>
nnoremap <leader>; $a;<esc>
inoremap <c-o> <esc>$a;
nnoremap <leader>, $a,<esc>
inoremap <c-l> <esc>$a,

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

nnoremap j gj
nnoremap k gk

" esc to go back to normal mode from terminal mode
tnoremap <Esc> <C-\><C-n>

" switch panels in terminal mode and normal mode
tnoremap <c-j> <C-\><C-n><c-w>w
nnoremap <c-j> <c-w>w

" " << LSP >> {{{
" let g:LanguageClient_autoStart = 1
" " let g:LanguageClient_changeThrottle = 1
" let g:LanguageClient_serverCommands = {
"     \ 'java': ['/usr/local/bin/jdtls', '-data', getcwd()],
"     \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
"     \ 'python': ['/Library/Frameworks/Python.framework/Versions/3.7/bin/pyls']}
" 
" nnoremap <leader>f :call LanguageClient#textDocument_formatting()<return>
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" " Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> D :call LanguageClient#textDocument_definition({'gotoCmd': 'tabnew'})<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" " }}} complete
" 
" begin rust.vim {{{

    " reformat rust file when save
    let g:rustfmt_autosave = 1

"}}}complete rust.vim

" {{{
" set omnifunc=syntaxcomplete#Complete
" }}}
