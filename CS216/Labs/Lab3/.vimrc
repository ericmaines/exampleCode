"vim configuration file
"Description: Optimized for C/C++ development, but useful also for other things.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set number              "Display Line numbers
set ruler			    "Display line, column numbers of the cursor
set history=100         "Sets how many lines of history VIM has to remember
set showcmd             "Show incomplete cmds down the bottom
set showmode            "Show current mode down the bottom
set showmatch			"highlight matching braces
set autoread            "Set to auto read when a file is changed from the outside
set laststatus=2		"Always show the status line
set nobackup			"Do not keep the backup~ file

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

"turn on syntax highlighting
syntax on

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab		"Be smart when using tabs
set shiftwidth=4	"Set indentation depth to 4 columns
set tabstop=4		"1 tab == 4 spaces
set expandtab		"Use spaces instead of tabs

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin on
filetype indent on

set wrap      		"Wrap lines
set linebreak   	"Wrap lines at convenient points


" ================ Searching ========================

set hlsearch		"Highlight search results
set ignorecase		"Do case insensitive search...
set smartcase		" ...unless capital letters are used
