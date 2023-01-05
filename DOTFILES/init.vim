"nhsung neovim setting
"Author: nhsung, nhsung@gmail.com
"
let g:mapleader = ","           "set leader key to comma

"================================= Plugins ========================================
call plug#begin('~/.vim/plugged')
" ----- MUST HAVEs -----
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-sensible'

Plug 'voldikss/vim-floaterm'
hi FloatermNC guibg=gray
hi Floaterm guibg=black
hi FloatermBorder guibg=orange guifg=cyan
let g:floaterm_autoclose     = 2
let g:floaterm_keymap_toggle = '<leader>T'
let g:floaterm_keymap_show   = '<leader>tl'
let g:floaterm_keymap_hide   = '<leader>th'
let g:floaterm_keymap_new    = '<leader>tc'
let g:floaterm_keymap_prev   = '<leader>tp'
let g:floaterm_keymap_next   = '<leader>tn'
map <leader>ts <ESC><ESC>:FloatermSend<CR>
map <leader>tk <ESC><ESC>:FloatermKill<CR>

Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs'
Plug 'ctrlpvim/ctrlp.vim'              "Ctrl + P for search file
Plug 'sgur/ctrlp-extensions.vim'       "cmdline, yankring, menu
Plug 'lambdalisue/vim-gista-ctrlp'     "CtrlPGista
Plug '~/.fzf'                          "https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf.vim'
" Plug 'rizzatti/dash.vim'               "https://github.com/rizzatti/dash.vim#readme
" nnoremap <leader>D :Dash<cr>

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }


Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }  " ansible
Plug 'lambdalisue/vim-gista'           "gist
Plug 'tpope/vim-tbone'

Plug 'rking/ag.vim'                    "<leader>gg
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'justinmk/vim-sneak'
Plug 'nathanaelkane/vim-indent-guides' "Indent Guides
Plug 'tpope/vim-surround'              "add - ysw/yss, del - ds, mod - cs
Plug 'terryma/vim-multiple-cursors'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdcommenter'        "<leader>c c/s/u
" Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'
Plug 'severin-lemaignan/vim-minimap'   "<leader>gm / gM 

Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'inside/vim-search-pulse'
Plug 'RRethy/vim-illuminate'
" Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons'          " filetype glyphs/icons
Plug 'blueyed/vim-diminactive'

" ----- For deoplete autocomplete -----
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-zsh'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neco-vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } "https://github.com/carlitux/deoplete-ternjs
Plug 'davidhalter/jedi-vim'
" ----- end -----
Plug 'w0rp/ale', { 'do': 'npm install -g prettier' }
Plug 'nightsense/simplifysimplify'
Plug 'mattn/emmet-vim'                 "Trigger: <C-y><leader>
Plug 'tpope/vim-commentary'            "Trigger: gc
Plug 'jiangmiao/auto-pairs'            "Auto pair for ',), }, ]...
Plug 'airblade/vim-gitgutter'          "hide git status in vim
Plug 'tpope/vim-fugitive'              "syntax error
Plug 'posva/vim-vue'

" ---- Telescopte ---- ""
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

"========== Plugins - Configuration ==========
" Plug 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Plug 'mhinz/vim-startify'
map <leader>gs <ESC><ESC>:Startify<CR>
let g:startify_files_number = 20
let g:startify_update_oldfiles = 1
let g:startify_custom_header_quotes = [['AWS CSE LINUX Profiler', '- nhsung@amazon.com', '- 82-01066423646']]
let g:startify_bookmarks = [ {'a': '~/.zshrc'}, {'s': '~/.zshrc_alias'}, {'d': '~/.config/nvim/init.vim'}, {'f': '~/.tmux.conf'} , {'g': '~/Documents/AWS/01_CASE/INPROGRESS'} ]
nnoremap <leader>gsl :SLoad<CR>
nnoremap <leader>gss :SSave<CR>
nnoremap <leader>gsd :SDelete<CR>
nnoremap <leader>gsc :SClose<CR>

" Plug 'scrooloose/nerdtree'
map nt <ESC>:NERDTreeToggle<CR>
let NERDChrismastree = 1
let NERDTreeMouseMode = 2
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:NERDTreeShowBookmarks = 1
" 디렉토리를 vim으로 여는 경우 NERD Tree 실행.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'file': '\v\.(pyc|so|dll)$',
  \ }
let g:ctrlp_use_caching = 0

" Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'down': '~40%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
let g:fzf_command_prefix = 'FZF'
nnoremap <C-t> :FZF<Cr>

" Plug 'pearofducks/ansible-vim' - https://github.com/pearofducks/ansible-vim
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_with_keywords_highlight = 'Constant'
let g:ansible_template_syntaxes = { '*.rb.j2': 'ruby' }

" Plugin 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Plug 'lambdalisue/vim-gista' - https://github.com/lambdalisue/vim-gista
" let g:gista#client#default_username = "nhsung"
let g:gista#github_user = 'nhsung'
map <C-q> :Gist post<CR>

" Plug 'sgur/ctrlp-extensions.vim'
map <leader>ec <ESC><ESC>:CtrlPCmdline<CR>
map <leader>ey <ESC><ESC>:CtrlPYankring<CR>
map <leader>em <ESC><ESC>:CtrlPMenu<CR>
let g:ctrlp_yankring_minimum_chars = 2
let g:ctrlp_yankring_limit = 100

" Plug 'rking/ag.vim'
let g:ag_prg="/usr/local/bin/ag --vimgrep -i"
map <leader>gg <ESC><ESC>:Ag 


" Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Plug 'nathanaelkane/vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=darkgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=lightgrey

" Plug 'scrooloose/nerdcommenter'
map <leader>cc <plug>NERDCommenterToggle
map <leader>cu <plug>NERDComUncommentLine
map <leader>cs <plug>NERDComSexyComment
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" Plug 'kien/rainbow_parentheses.vim'
let g:rainbow_active = 1

" Plug 'severin-lemaignan/vim-minimap'
" let g:minimap_highlight='Visual'
map <leader>gm <ESC><ESC>:Minimap<CR>
map <leader>gM <ESC><ESC>:MinimapClose<CR>


" Plug 'vim-airline/vim-airline'
set laststatus=2
set expandtab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail' " buffer format
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline_powerline_fonts = 1
" Plug 'vim-airline/vim-airline-themes'
let g:airline_solarized_bg='dark'

" Plug 'inside/vim-search-pulse'
let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_duration = 500
let g:vim_search_pulse_color_list = [22, 28, 34, 40, 46]

" Plug 'RRethy/vim-illuminate'
hi link illuminatedWord Visual
hi link illuminatedWord CursorLine

" ANSIBLE
autocmd FileType yaml setlocal ai ts=2 sw=2 et
" Dockerfile
Plug 'ekalinin/Dockerfile.vim'


"================================= General Config ===================================
" 24bit color
set t_Co=256

filetype plugin on
set number                      "line numbers
set ignorecase                  "ignore Case sensitive when searching
set hlsearch                    "highlight searching result
set incsearch                   "incremental search that shows partial matches.
set showmatch                   "highlight matched bracket ()
set showcmd
set ruler

" ----- NeoSolarized -----
syntax enable
"colorscheme solarized
"colorscheme codeschool
"colorscheme molokai
"colorscheme azuki
colorscheme gruvbox
set background=dark

" highlight color
" set cursorcolumn
syntax on
syntax sync minlines=100        "For speed up vim
set cursorline
hi CursorLine ctermbg=236 guibg=#5b3d3d
hi Visual cterm=bold ctermbg=Yellow ctermfg=NONE
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" edit init.vim
map <leader>e :e $HOME/.config/nvim/init.vim<CR>
" source init.vim
map <leader>r :source $HOME/.config/nvim/init.vim<CR>
" save and quit
map <leader>wq :wq!<CR> 
" save in case something is changed
map <leader>x :x!<CR> 
" just quit
map <leader>q :q!<CR> 
" IndentGuidesToggle
map <leader>I <Plug>IndentGuidesToggle
" shell
map <leader>t :terminal<CR> 
" pastebinit
" map <C-w> :%w !pastebinit<CR>
" folding - function {}
map <C-h> v]}zf
" switch a pane
" C-W, x

" NEOVIM 24BIT TRUE COLOR
set termguicolors


"================================= Optional setting =================================
set relativenumber              "show relative number from current line
                                "Highly recommended
set history=1000                "store :cmd history
set title                       "change the terminal title
set mouse=h                     "Enable mouse in help mode
set mouse=a                     "movement with mouse
                                "'a' to all mode, n, v, i, c to Normal, Visual, Insert, Command mode
set wrap
let g:onedark_terminal_italics = 1
set foldmethod=marker           " save folding

set clipboard=unnamed           "yank, paste to system clipboard

"================================= Turn of swap =====================================
set noswapfile
set nobackup
set nowb

"================================= Indentation ======================================
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

"================================= Tap & Space ======================================
nmap <leader>l <Esc>:set list!<CR>
highlight SpecialKey cterm=None ctermfg=grey
map <leader>2 <Esc>:retab<CR>:set ts=4<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=2<CR>:set sw=2<CR>:retab!<CR>
map <leader>4 <Esc>:retab<CR>:set ts=2<CR>:set noexpandtab<CR>:retab!<CR>:set expandtab<CR>:set ts=4<CR>:set sw=4<CR>:retab!<CR>
set listchars=tab:>·
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:·
set listchars+=space:·
" set listchars=tab:>·
" set listchars+=trail:·          "show for tab, trail char at the end of the line
" set listchars+=extends:»
" set listchars+=precedes:«
set fillchars+=vert:\│          "Make vertical split separator full line

" ================================ Persistent Undo ===================================
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" ================================ Auto command ===================================
autocmd InsertEnter * :set nocul                  "Remove cursorline highlight
autocmd InsertLeave * :set cul                    "Add cursorline highlight in normal mode
autocmd FileType html setlocal sw=2 ts=2 "Set indentation to 4 for html, css, scss, js
autocmd FileType css setlocal sw=2 ts=2
autocmd FileType scss setlocal sw=2 ts=2
autocmd FileType js setlocal sw=2 ts=2

" automatically save and load views (including cursor positions and folds)
" au BufWinLeave ?* mkview!
" au BufWinEnter ?* silent! loadview
" autocmd BufWinLeave * if expand("%") != "" | mkview | endif
" autocmd BufWinEnter * if expand("%") != "" | loadview | endif

" User deoplete
let g:deoplete#enable_at_startup = 1

"----- useful but not installed -----
" vim airline: Many information about file, git and buffer

" ----- Will install later -----
" Ctag

"================================= Plugins setting ==================================

"----- deoplete -----
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" For deoplete-ternjs
let g:deoplete#sources#ternjs#filetypes = [
                \ 'vue',
                \ ]
" ----- jedi vim -----
let g:jedi#show_call_signatures = "0"   "jedi-vim slowdown

" ----- ale -----
let g:ale_lint_on_save = 1              "Lint when saving a file
let g:ale_sign_error = '✖'                                                      "Lint error sign
let g:ale_sign_warning = '⚠'                                                    "Lint warning sign
let g:ale_statusline_format =[' %d E ', ' %d W ', '']                           "Status line texts
let g:ale_linters = {'javascript': ['eslint']}                                  "Lint js with eslint
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}                       "Fix eslint errors
" ALEFix, ALEFixSuggest로 fix 사용 가능


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
