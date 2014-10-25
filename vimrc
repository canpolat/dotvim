execute pathogen#infect()
syntax on
filetype plugin indent on
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
"set number
syntax on
filetype on

set listchars=tab:>-,trail:~,extends:>,precedes:<

" Clipboard mappings
vnoremap <C-c> "+y
"vnoremap <C-v> "+p

" Comment settings
:highlight Comment ctermfg=Green guifg=Green

" Highlight trailing whitespaces
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:highlight ExtraWhitespace ctermbg=red guibg=red

:let mapleader = ","

" Task List
nmap ,td <Plug>TaskList

" Keep the split window when closing a buffer
nmap ,d :b#<bar>bd#<CR>

" NERDTree
" au VimEnter *  NERDTree

" Airline
set laststatus=2
au VimEnter * exec 'AirlineTheme monochrome'

" Notes
:let g:notes_directories = ['~/Sync/Dropbox/vimnotes']
:let g:notes_suffix = '.txt'
:let g:notes_title_sync = 'rename_file'


" Virtualenv
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

