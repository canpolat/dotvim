call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

execute pathogen#infect()

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
filetype on

set listchars=tab:>-,trail:~,extends:>,precedes:<

" Comment settings
:highlight Comment ctermfg=Green guifg=Green

" Highlight trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

:let mapleader = ","

" Task List
map ,td <Plug>TaskList

# Virtualenv
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

