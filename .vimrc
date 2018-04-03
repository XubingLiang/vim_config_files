set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ------Usual Vim Settings------

set encoding=utf8
"set gfn=MesloLGM\ Nerd\ Font:h12
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

" syntax on
syntax enable

set number
set cursorline

set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

set backspace=indent,eol,start
set complete-=i

set mouse=a

set nrformats-=octal

" ------END Usual Vim Stuff------






" ------Vim Colors Solarized------


set background=dark
"let g:solarized_termcolors=16
"let g:solarized_termtrans=1
colorscheme solarized

" ------END Vim Colors Solarized------






" -----Pathogen-----
"
execute pathogen#infect()
call pathogen#helptags()

" -----END Pathogen-----




" -----Vim Copy and Paste to System Clipboard-----

" Copying and cutting in visual mode (Ctrl c and Ctrl x)
vnoremap <C-c> "*yi
vnoremap <C-x> "*di

" Pasting in visual mode (Ctrl v)
vnoremap <C-v> "*pi
" vnoremap <C-v> "+p   <----- this is used in X11 window systems

" pasting in normal mode (Ctrl v)
nnoremap <C-v> "*pi
" nnoremap <C-v> "+p   <----- this is used in window X11 systems

" pasting in insert mode (Ctrl v)
" this one is a bit different,
" pressing Ctrl v = <Esc> (which brings us to normal mode),
" pastes it using "*p, then brings us back to insert mode i.
inoremap <C-v> <Esc>"*pi
" inoremap <C-v> <Esc>"+pi <----- this is used in X11 window systems

" -----END Vim Copy and Paste to System Clipboard-----


" -----Vim Undo and Redo-----

" undo in insert mode
inoremap <C-z> <Esc>ui

" undo in normal mode
nnoremap <C-z> <Esc>ui

" undo in visual mode
vnoremap <C-z> <Esc>u gv

" redo in insert mode
inoremap <C-y> <Esc><C-r>i

" redo in normal mode
nnoremap <C-y> <Esc><C-r>i

" redo in visual mode
vnoremap <C-y> <Esc><C-r>gv

" -----END Vim Undo and Redo-----











" -----Other Vim Hotkey Mappings-----

" Select all
inoremap <C-a> <Esc>GVgg
nnoremap <C-a> <Esc>GVgg
vnoremap <C-a> <Esc>GVgg

" Open file (open current folder to browse)
inoremap <C-o> <Esc>:e . <Enter>
nnoremap <C-o> <Esc>:e . <Enter>
vnoremap <C-o> <Esc>:e . <Enter>
cnoremap <C-o> <Esc>:e . <Enter>

" New Tab
inoremap <C-t> <Esc>:tabnew <Enter>i
nnoremap <C-t> <Esc>:tabnew <Enter>i
cnoremap <C-t> <Esc>:tabnew <Enter>i
vnoremap <C-t> <Esc>:tabnew <Enter>i

" New Buffer (Vertical)
inoremap <C-n> <Esc>:vnew <Enter>i
nnoremap <C-n> <Esc>:vnew <Enter>i
vnoremap <C-n> <Esc>:vnew <Enter>i
cnoremap <C-n> <Esc>:vnew <Enter>i

" Closing Tabs
inoremap <C-w> <Esc>:tabc <Enter>i
nnoremap <C-w> <Esc>:tabc <Enter>i
vnoremap <C-w> <Esc>:tabc <Enter>i

" Closing Buffer
inoremap <C-e> <Esc>:bdelete <Enter>i
nnoremap <C-e> <Esc>:bdelete <Enter>i
vnoremap <C-e> <Esc>:bdelete <Enter>i

" Find
inoremap <C-f> <Esc>/
nnoremap <C-f> <Esc>/
vnoremap <C-f> <Esc>/

" Find next
inoremap <F3> <Esc>n
nnoremap <F3> <Esc>n
vnoremap <F3> <Esc>n

" Replace All
map <C-h> :%s/

" CTRL-k is next tab
noremap <C-l> :<C-U>tabnext<CR>i
inoremap <C-l> <C-\><C-N>:tabnext<CR>i
cnoremap <C-l> <C-C>:tabnext<CR>i

" CTRL-j is previous tab
noremap <C-k> :<C-U>tabprevious<CR>i
inoremap <C-k> <C-\><C-N>:tabprevious<CR>i
cnoremap <C-k> <C-C>:tabprevious<CR>i

" -----END Other Vim Hotkey Mappings-----






" -----Vim Folding------

set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99

" ------END Vim Folding------






" ------Vim Gitgutter------

" Sets the time to update gitgutter symbols to 1500ms
set updatetime=1500

" ------END Vim Gitgutter------






" ------Vim Airline------
let g:airline_powerline_fonts = 1

" Enables tabs on top even if only one tab is open
let g:airline#extensions#tabline#enabled = 1

" The following two lines change vim airline separators from > to |
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ------END Vim Airline------






" ------Syntastic------

let g:syntastic_mode_map = { 'mode': 'passive' }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" let g:syntastic_aggregate_errors = 1

let g:syntastic_shell = "/bin/bash"

" Pressing F4 would toggle Syntastic
nmap <F4> :SyntasticToggleMode<CR>

" disabled rope
let g:pymode_rope = 0


" ------END Syntastic------






" ------Vim Tagbar------

nmap <F5> :TagbarToggle<CR>
" Pressing F5 would toggle tagbar
" change F5 to any key to toggle tagbar

" ------END Vim Tagbar------






" ------Gundo Vim for Visualizing Vim Undo Tree------

nnoremap <F6> :GundoToggle<CR>
" Pressing F6 would toggle Gundo
" Change F6 to any other key toggle

" ------END Gundo Vim------






" ------NERDTree for File Browser Pane on the Side------

" Open NERDTree automatically when vim starts up
" autocmd vimenter * NERDTree

" Open NERDTree automatically even when no files were specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Key toggle for NERDTree
map <F7> :NERDTreeToggle<CR>

" Close NERDTree if the only open window in vim is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------END NERDTree------






" ------Vim NERDTree Syntax Highlight------

" Highlights the file name
let g:NERDTreeFileExtensionHighlightFullName = 1

" ------END Vim NERDTree Syntax Highlight------













""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose  


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>	
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    set timeoutlen=1500
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    set ttimeoutlen=200

endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END CSCOPE SETTINGS FOR VIM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""














" ------C Headers------
" Allows automatic generation of header comments such as
" File Name, Creation Date, Last Modified, etc
"
" Also allows automatic generation of int main
"
" Also allows the automatic inclusion of common .h libraries
"
" Header templete stored in .vim/c_template.c

:au BufNewFile *.c r ~/.vim/c_template.c

autocmd bufnewfile *.c so ~/.vim/c_header.txt
autocmd bufnewfile *.c exe "1," . 17 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 17 . "g/Creation Date :.*/s//Creation Date : " .strftime("%Y-%h-%d---%H:%M")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd bufnewfile,Bufwritepre,filewritepre *.c exe "1," . 17 . "g/Last Modified :.*/s//Last Modified : " .strftime("%Y-%h-%d---%H:%M")
autocmd bufwritepost,filewritepost *.c execute "normal `a"

" ------END C Headers------
