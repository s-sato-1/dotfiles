" Encoding
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" Tab Indent
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Cursol
set number

" LineNumber
highlight LineNr ctermfg=239

" CursorLinezNr
highlight CursorLineNr term=bold cterm=NONE ctermfg=228 ctermbg=NONE

" Cursol Line
" set cursorline
" highlight CursorLine ctermbg=DarkGray
" highlight CursorLine ctermfg=Black

" Cursol Column
" set cursorcolumn
" highlight CursorColumn ctermbg=DarkGray
" highlight CursorColumn ctermfg=Black

" BackSpace
set backspace=indent,eol,start

" Match
set showmatch
source $VIMRUNTIME/macros/matchit.vim

" Menu
set wildmenu
set history=5000

" Paste
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" Shift + h
nnoremap <S-h> ^

" Shift + l
nnoremap <S-l> $

" PlugIn
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" /////////////////////////////////////////////
" ///////////////////////////////////////////// if you want to add plug-in, append it.
" /////////////////////////////////////////////

NeoBundle 'tomasr/molokai'
" molokai
if neobundle#is_installed('molokai')
    " colorscheme molokai
endif
set t_Co=256
syntax enable

NeoBundle 'itchyny/lightline.vim'
" lightline
set laststatus=2
set showmode
set showcmd
set ruler

NeoBundle 'bronson/vim-trailing-whitespace'
" command: FixWhitespace

NeoBundle 'Yggdroot/indentLine'

NeoBundle 'scrooloose/syntastic'

let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers=['eslint'] " js
let g:syntastic_python_checkers = ['pylint'] " python
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript'], 'passive_filetypes': [] }

NeoBundle 'scrooloose/nerdtree'
" nerdtree
nnoremap <C-e> :NERDTree<CR>
let NERDTreeShowHidden=1

NeoBundle 'airblade/vim-gitgutter'

" /////////////////////////////////////////////
" ///////////////////////////////////////////// if you want to add plug-in, append it.
" /////////////////////////////////////////////

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

