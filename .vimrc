" Plugin Manager NeoBundle
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'easymotion/vim-easymotion'
    NeoBundle 'tpope/vim-surround'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'yegappan/mru'
    NeoBundle 'jacquesbh/vim-showmarks'
   call neobundle#end()
endif

filetype plugin indent on
filetype plugin on

" Basic Config
set fenc=utf-8 " encoding utf-8
set nobackup   "no backup file
set noswapfile "no swap file
set autoread   "hot reload
set hidden     "
set showcmd    " show command status

" Visual
set relativenumber     "show line number
set cursorline "show cusorline
set virtualedit=onemore "
set smartindent         "enable smart indent
set visualbell          "enable visual bell
set showmatch           "show match parans
set laststatus=2        "always display status
set wildmode=list:longest  "complete command line
syntax enable              " enable syntax highlith

" Whitespaces
set list listchars=tab:\▸\- "dispaly invisible chars
set expandtab      "convert tab to space
set tabstop=4      "tab width
set shiftwidth=4   "tab width

" Search
set ignorecase     "ingore case
set incsearch      "enable incremental search
set wrapscan       "wrap scan
set hlsearch       " hilight search world
