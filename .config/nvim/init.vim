call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'scrooloose/nerdtree' " Tree-based file browser
	Plug 'stevearc/vim-arduino' " Allow compilation/upload via arduino-cli.
	Plug 'itchyny/lightline.vim' " A light and configurable statusline.
	Plug 'airblade/vim-gitgutter' " Git diff in the left column.
	Plug 'tpope/vim-commentary' " Easily comment code.
  Plug 'tpope/vim-fugitive'
  Plug 'arcticicestudio/nord-vim'
  Plug 'jpalardy/vim-slime' " Send to tmux
call plug#end()

set number " Show line numbers
set autoread " Re-read files modified outside nvim
set scrolloff=3 " Number of lines before/after cursor when scrolling.
set linebreak		" wrap lines which are longer than the window.
set showbreak=↪\ \ 	" string to put before wrapped screen
set sidescrolloff=2	" min number of columns to keep left/right of cursor.
set colorcolumn=80 " display a line in column 80 to show when to line break.
set showcmd		" Show incomplete commands as they are typed.
set noshowmode		" don't display current mode as we are using lightline.
set laststatus=2 	" show status line, even if there's only one Vim window.
set showmatch		" when inserting a bracket, briefly jump to its match.
set tabstop=2
set smartindent
set shiftwidth=2
set expandtab
set updatetime=250 " Update sign column more often.
" set ruler " Not needed with lightline.

colorscheme nord
highlight clear SignColumn
let NERDTreeQuitOnOpen = 1 " Close NerdTree when opening a file.

let g:lightline = {
  \     'colorscheme': 'nord',
  \     'active': {
  \         'left': [['mode', 'paste' ], ['readonly', 'filename', 'modified']],
  \         'right': [['lineinfo'], ['percent'], ['gitbranch', 'filetype']]
  \     },
  \     'component_function': {
  \         'gitbranch': 'FugitiveHead'
  \     },
  \ }

let g:arduino_serial_port = "/dev/ttyACM0"
let g:arduino_serial_cmd = "picocom --echo {port} --omap crlf --baud {baud}"
let g:arduino_use_slime = 1
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.config/slime/slime_paste"

" Reload nvim configuration
nnoremap <leader>rc :source $MYVIMRC<CR>

" Open/close NERDTree
map <C-o> :NERDTreeToggle<CR>

" Arduino key mappings
nnoremap <buffer> <leader>ac :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>as :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

