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

" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[3 q" "SR = REPLACE mode
" let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)
"Cursor settings:

"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" statusline
" function! GitBranch()
"   return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
" endfunction

" function! StatuslineGit()
"   let l:branchname = GitBranch()
"   return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
" endfunction

" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%{StatuslineGit()}
" set statusline+=%#LineNr#
" set statusline+=\ %f
" set statusline+=%m\
" set statusline+=%=
" set statusline+=%#CursorColumn#
" set statusline+=\ %y
" set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
" set statusline+=\[%{&fileformat}\]
" set statusline+=\ %p%%
" set statusline+=\ %l:%c
" set statusline+=\
" end statusline

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

" {{{ coc-vim 

" comfirm complete suggestion selection
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" map jump actions
nmap <silent> D <Plug>(coc-definition)
nmap <silent> <F4> <Plug>(coc-diagnostic-next)
nmap <silent> <F3> <Plug>(coc-diagnostic-prev)


" map quick fix
" nmap <leader> f <Plug>(coc-fix-current)

" map rename
nmap <silent> <F2> <Plug>(coc-rename) 

" }}}

" {{{

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" }}}
