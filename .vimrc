"  ____                                       
" |  _ \                    _                 
" | |_) | ___ _ __   __   _(_)_ __ ___  _ __ ___ 
" |  _ < / _ \ '_ \  \ \ / / | '_ ` _ \| '__/ __|
" | |_) |  __/ | | |  \ V /| | | | | | | | | (__ 
" |____/ \___|_| |_| (_)_/ |_|_| |_| |_|_|  \___|

" |3[-|\|'_\" .\/||\/||2(

" ▄▄▄▄   ▓█████  ███▄    █   ██████          ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"▓█████▄ ▓█   ▀  ██ ▀█   █ ▒██    ▒         ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"▒██▒ ▄██▒███   ▓██  ▀█ ██▒░ ▓██▄            ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"▒██░█▀  ▒▓█  ▄ ▓██▒  ▐▌██▒  ▒   ██▒          ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"░▓█  ▀█▓░▒████▒▒██░   ▓██░▒██████▒▒    ██▓    ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"░▒▓███▀▒░░ ▒░ ░░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░    ▒▓▒    ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"▒░▒   ░  ░ ░  ░░ ░░   ░ ▒░░ ░▒  ░ ░    ░▒     ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
" ░    ░    ░      ░   ░ ░ ░  ░  ░      ░        ░░   ▒ ░░      ░     ░░   ░ ░        
" ░         ░  ░         ░       ░       ░        ░   ░         ░      ░     ░ ░      
"      ░                                 ░       ░                           ░        
                                                
execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme molokai

set smartcase
set autoindent
set autowrite
set autoread
set number
set hidden
set ignorecase
set foldmethod=syntax
"set foldlevelstart=1000
set foldlevelstart=1
set foldenable
set foldcolumn=3

set shiftwidth=4
set softtabstop=4
set expandtab

set listchars=tab:▸\ ,eol:¬

" Re-source this file
nnoremap <Leader>so :so $MYVIMRC<CR> :echo "Sourced" $MYVIMRC<CR>
nnoremap <Leader>vim :e $MYVIMRC<CR>

" Easy multiline navigation
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
xnoremap j gj
xnoremap k gk

" No Processing
let g:processing_no_default_mappings = 1 " Disable default mappings
let g:processing_fold = 1

" Faster Movement
nnoremap J 5gj
nnoremap K 5gk

" Enter and shift enter to pad lines
nnoremap <C-CR> o<Esc>k
nnoremap <S-CR> O<Esc>j

" Argument objects from sideways.vim
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

" Insert spaces to make a=b to a = b
nnoremap <Leader>a<Space> i<Space><Esc>la<Space><Esc>h

" Autospell 1
nnoremap z== z=1<CR>

" GoldenView Bindings
let g:goldenview__enable_default_mapping = 0 "Disable default mappings

nmap <C-w>w <Plug>GoldenViewNext
nmap <silent> <C-n> <Plug>GoldenViewSplit
nmap <C-w><Space> <Plug>GoldenViewSwitchMain

" Disable M-p from AutoPairs so that YankStack can use
let g:AutoPairsShortcutToggle = ''

" Easy split movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" no more stupid shift key
nnoremap ; :
nnoremap q; q:
vnoremap ; :
nnoremap : ;
vnoremap : ;

" Exchange default mappings
nmap cx <Plug>(Exchange)
xmap X <Plug>(Exchange)
nmap cxc <Plug>(ExchangeClear)
nmap cxx <Plug>(ExchangeLine)

" Swap default mappings
vmap <leader>x  <plug>SwapSwapOperands
vmap <leader>cx <plug>SwapSwapPivotOperands
nmap <leader>x  <plug>SwapSwapWithR_WORD
nmap <leader>X  <plug>SwapSwapWithL_WORD


"NerdTree Toggle ;;
nnoremap <F9> :NERDTreeToggle<CR>

"Tagbar Toggle
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

" EASY MOTION
" ===========
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"nmap <Space> <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <Space> <Plug>(easymotion-s)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"SimpleFold
"function! Num2S(num, len)
    "let filler = "                                                            "
    "let text = '' . a:num
    "return strpart(filler, 1, a:len - strlen(text)) . text
"endfunction

"function! FoldText()
    "let sub = substitute(getline(v:foldstart), '/\*\|\*/\|{{{\d\=', '', 'g')
    "let diff = v:foldend - v:foldstart + 1
    "return  '+' . v:folddashes . '[' . Num2S(diff,3) . ']' . sub
"endfunction

"set foldtext=FoldText()