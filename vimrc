call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Word Wrap Settings
set wrap
set linebreak
set nolist

" Font Settings
set encoding=utf-8

" Bell Settings
set noerrorbells
set visualbell
set t_vb=

" Search Settings
set hlsearch
set ignorecase
set smartcase
set incsearch

" Misc Settings
set number
syntax on

" Comment settings
:highlight Comment ctermfg=Green guifg=Green

" Highlight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
