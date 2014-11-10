execute pathogen#infect()

colorscheme aotearoa
set guifont=Inconsolata\ for\ Powerline:h18

set guioptions-=L " hide left scrollbar
set guioptions-=r " hide right scrollbar
set guioptions-=T " hide toolbar

set lines=50

set tabstop=2
set softtabstop=2
set shiftwidth=2

set autoread
set dir=/tmp
set hlsearch
set incsearch
set nonumber
set noshowmode
set nospell
set nowrap
set statusline=

" Mode-dependent cursor for iTerm.
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

if has("gui_macvim")
  set shell=/bin/bash\ -i
endif

let mapleader = ","
let maplocalleader = "\\"

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Treat soft-wrapped lines as multiple lines.
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" System clipboard interaction.
noremap <leader>p :silent! set paste<CR>"*p:set nopaste<CR>
noremap <leader>P :silent! set paste<CR>"*P:set nopaste<CR>

autocmd BufRead,BufNewFile .jscsrc set filetype=json
autocmd BufRead,BufNewFile .jshintrc set filetype=json
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd BufRead,BufNewFile *.text set filetype=markdown

" Slowest but most accurate syntax highlighting.
autocmd BufEnter * :syntax sync fromstart

" TextMate-style display of invisible characters.
set listchars=tab:⇥\ ,eol:¬,trail:·,extends:»,precedes:«
set list

" Show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let g:airline_left_sep="\uE0B0"
let g:airline_right_sep="\uE0B2"
