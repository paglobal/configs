"Python executable (windows)
"let g:python3_host_prog='C:\Users\Amoah\AppData\Local\Programs\Python\Python39\python.exe'
"Python executable (linux)
let g:python3_host_prog='/usr/bin/python3'
"Set neovim-node-host (linux)
let g:node_host_prog = '/home/paglobal/.config/nvm/versions/node/v16.16.0/bin/neovim-node-host'


"Leader key mapping
let mapleader = " "

"Leader key Mappings
"Switch between splits using spacebar + h,j,k,l
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"Startify
"Save session
nnoremap <leader>ys :SSave<CR>
"Delete session
nnoremap <leader>yd :SDelete<CR>
"Load session
nnoremap <leader>yl :SLoad<CR>
"Close session
nnoremap <leader>yc :SClose<CR>

"Signify toggle
nnoremap <leader>ts :SignifyToggle<CR>


"Signify toggle highlight
nnoremap <leader>th :SignifyToggleHighlight<CR>

"Save
nnoremap <leader>s :w<CR>

"Exit without saving
nnoremap <leader>q :q!<CR>

"Source %
nnoremap <leader>tr :source %<CR>

"Toggle nerdtree
nnoremap <leader>tn :NERDTreeToggle<CR>

"Toggle word wrap
noremap <silent> <leader>ww :call ToggleWrap()<CR>


"Toggle goyo
nnoremap <leader>gy :Goyo<CR>

"Toggle limelight
nnoremap <leader>il :Limelight!!<CR>

"Toggle floaterm
nnoremap <leader>tf :FloatermToggle<CR>

"New floaterm instance
nnoremap <leader>nf :FloatermNew<CR>

"Previous floaterm instance
nnoremap [f :FloatermPrev<CR>

"Next floaterm instance
nnoremap ]f :FloatermNext<CR>

"Toggle tagbar
nmap <leader>tg :TagbarToggle<CR>

"Kill floaterm
nnoremap <leader>tk :FloatermKill!<CR>

"Vsplit
nnoremap <leader>vs :vsplit<CR>

"Vsplit terminal
nnoremap <leader>vt :vsplit +terminal<CR>

"New tab
nnoremap <leader>tb :tabnew<CR>

"Previous tab
nnoremap [t :tabprevious<CR>

"Next tab
nnoremap ]t :tabnext<CR>

"Cycle through buffers
nnoremap <leader>b :buffers<CR>:buffer<Space>

"Previous buffer
nnoremap [b :bprevious<CR>

"Next buffer
nnoremap ]b :bnext<CR>

"Global search and replace
nnoremap <leader>gs :%s///gc

"fzf bindings
"Files
nnoremap <leader>ff :Files<CR>
"Filetypes
nnoremap <leader>zf :Filetypes<CR>
"GFiles
nnoremap <leader>fg :GFiles<CR>
"GFiles?
nnoremap <leader>zg :GFiles?<CR>
"Buffers
nnoremap <leader>fb :Buffers<CR>
"Colorschemes
nnoremap <leader>fc :Colors<CR>
"Commands
nnoremap <leader>zc :Commands<CR>
"Ag
nnoremap <leader>fa :Ag<CR>
"Rg
nnoremap <leader>fr :Rg<CR>
"Lines
nnoremap <leader>fl :Lines<CR>
"BLines
nnoremap <leader>zl :BLines<CR>
"Tags
nnoremap <leader>ft :Tags<CR>
"BTags
nnoremap <leader>zt :Tags<CR>
"Helptags
nnoremap <leader>zh :Helptags<CR>
"History
nnoremap <leader>fh :History<CR>
"Windows
nnoremap <leader>fw :Windows<CR>
"Mappings
nnoremap <leader>fm :Maps<CR>
"Marks
nnoremap <leader>zm :Marks<CR>

"Change directory
"Change directory backwards
nnoremap <leader>db :cd ..<CR>
"Change directory paglobal
nnoremap <leader>dp :cd ~/Documents/project-n/paglobal/paglobal/<CR>
"Change directory project-n
nnoremap <leader>dn :cd ~/Documents/project-n/<CR>

"Properly indent files that I have I couldn't get a formatter to work for (mainly Java)
nnoremap <leader>ij gg=G

"Remap black hole register
nnoremap _ "_
vnoremap _ "_

"Move lines up and down
nnoremap J :m .+1<cr>==
nnoremap K :m .-2<cr>==
inoremap <A-j> <esc>:m .+1<cr>==gi
inoremap <A-k>:m .-2<cr>==gi
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

"Now it is possible to paste many times over selected text without overwriting clipboard
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'

"use f9 to run python file with python repl
autocmd filetype python map <buffer> <f9> :w<cr>:exec '!python' shellescape(@%, 1)<cr>
autocmd filetype python imap <buffer> <f9> <esc>:w<cr>:exec '!python' shellescape(@%, 1)<cr>

"use f9 to run js file with node repl
autocmd filetype javascript map <buffer> <f9> :w<cr>:exec '!node' shellescape(@%, 1)<cr>
autocmd filetype javascript imap <buffer> <f9> <esc>:w<cr>:exec '!node' shellescape(@%, 1)<cr>

"Split the right way
set splitright
set splitbelow


"Other key mappings
"Exit terminal
tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

"Close terminal
tnoremap <leader>q <C-w><C-c>

"Enter key
map <Enter> o<ESC>

"Backspace key
map <BS> i<BS><Right><ESC>

"Delete key
map <Del> i<Del><Right><ESC>

"Space with s
"nnoremap s i<Right><space><ESC>

"Command mode
inoremap jk <ESC>
inoremap kj <ESC>
snoremap jk <ESC>
snoremap kj <ESC>

"Use alt + h,j,k,l to resize windows
nnoremap <Tab>j :resize -4<CR>
nnoremap <Tab>k :resize +4<CR>
nnoremap <Tab>h :vertical resize +4<CR>
nnoremap <Tab>l :vertical resize -4<CR>

"Set up colorscheme mappings
map <F7> :set termguicolors<CR>
map <F8> :set notermguicolors<CR>
map <F10> :set background=light<CR>
map <F12> :set background=dark<CR>
nnoremap <F6> :colorscheme<space>
"map <F6> :colorscheme ron<CR>
"map <F7> :colorscheme gruvbox<CR>
"map <F8> :colorscheme PaperColor<CR>


"ALE Setup
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'css': ['prettier', 'stylelint'],
      \   'scss': ['prettier', 'stylelint'],
      \   'javascript': ['prettier', 'eslint'],
      \   'javascriptreact': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \   'typescriptreact': ['prettier', 'eslint'],
      \   'html': ['prettier'],
      \   'python': ['black', 'autopep8'],
      \   'c++': ['clang-format', 'clangtidy'],
      \   'rust': ['rustfmt'],
      \   'json': ['prettier'],
      \   'svelte': ['prettier'],
      \}

let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'javascriptreact': ['eslint'],
      \   'typescript': ['eslint'],
      \   'typescriptreact': ['eslint'],
      \   'html': ['htmlhint'],
      \   'css': ['stylelint'],
      \   'scss': ['stylelint'],
      \   'python': ['pylint', 'flake8'],
      \   'c++': ['clangd', 'cc'],
      \   'rust': ['analyzer', 'rls'],
      \   'java': ['javac'],
      \}

"Configure flake8 and pylint to be faster by setting paths to executables
"(windows)
"let g:ale_python_flake8_executable ='C:\\Users\\User\\AppData\\Local\\Programs\\Python\\Python39\\Lib\\site-packages'
"let g:ale_python_flake8_use_global = 1
"let g:ale_python_pylint_executable ='C:\\Users\\User\\AppData\\Local\\Programs\\Python\\Python39\\Lib\\site-packages'
"let g:ale_python_pylint_use_global = 1
"let g:ale_virtualenv_dir_names = []

"Other ALE options setup
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0


"Configure vim-polyglot
"Disable vim sensible
"let g:polyglot_disabled = ['sensible']


"Plug begin (windows)
"call plug#begin('~/AppData/Local/nvim/plugged')
"Plug begin (linux)
call plug#begin('~/.config/nvim/plugged')

"Coc intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Auto pair for symbols
Plug 'jiangmiao/auto-pairs'

"Emmet
Plug 'mattn/emmet-vim'

"Git signify
Plug 'mhinz/vim-signify'

"Nerd commenter for commenting
Plug 'preservim/nerdcommenter'

"Nerdtree with git support and devicons
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'

"Floaterm(Terminal in floating window)
Plug 'voldikss/vim-floaterm'

"ALE(Asynchronous Lint Engine)
Plug 'dense-analysis/ale'

"Vim Surround
Plug 'tpope/vim-surround'

"Startify(Nice and productive startup page)
Plug 'mhinz/vim-startify'

"Goyo(Focus mode)
Plug 'junegunn/goyo.vim'

"Limelight(Focus mode)
Plug 'junegunn/limelight.vim'

"Change both tags
Plug 'AndrewRadev/tagalong.vim'

"Indentline
Plug 'Yggdroot/indentLine'

"Generate symbols/tags for code file
Plug 'preservim/tagbar'

"Better syntax highlighting
Plug 'sheerun/vim-polyglot'

"Paint css colors with the real color
Plug 'lilydjwg/colorizer'

"Repeat plugin commands with . (vim surround)
Plug 'tpope/vim-repeat'

"Official rust vim plugin
Plug 'rust-lang/rust.vim'

"Official go vim plugin
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Be good at vim
Plug 'ThePrimeagen/vim-be-good'

"FZF - Lightning Fast Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Make sure fzf searches the right root directory
"Plug 'airblade/vim-rooter'

""Snippets engine
"Plug 'SirVer/ultisnips'
""Useful snippets for different languages
"Plug 'honza/vim-snippets'

"Color schemes
"Gruvbox
Plug 'morhetz/gruvbox'
"Papercolor theme
Plug 'NLKNguyen/papercolor-theme'
"Nord
Plug 'arcticicestudio/nord-vim'
"One Dark
Plug 'joshdick/onedark.vim'
"Darcula
Plug 'dracula/vim', { 'as': 'dracula' }
"Lucario
Plug 'raphamorim/lucario'
"Nightfly
Plug 'bluz71/vim-nightfly-guicolors'

call plug#end()


"Configure vim-devicons
autocmd FileType nerdtree setlocal nolist


"Configure vim-go
let g:go_diagnostics_enabled = 1


""Configure UltiSnips
"let g:UltiSnipsExpandTrigger="<CR>"
"let g:UltiSnipsListSnippets="<c-t>"


"Configure Emmet
let g:user_emmet_settings = {
  \  'javascript' : {
  \    'extends' : 'html',
  \  },
  \}

let g:user_emmet_install_global=0
autocmd FileType html,css,javascript,svelte,vue,javascriptreact,typescriptreact EmmetInstall


"Configure Startify
"Save sessions on exit
let g:startify_session_persistence = 1


"Something relating to webpack
"set backupcopy=yes


"Configure goyo and limelight
"Configure goyo so that cursorline remains after goyo exit
"augroup my-colors
  "autocmd!
  "autocmd ColorScheme * hi CursorLine   cterm=NONE ctermbg=DarkGray ctermfg=white guibg=darkred guifg=white
"augroup END

"Configure limelight to work with unsupported color schemes
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

"Configure limelight to activate when in goyo mode
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


"Configure tagbar
"Set ctags path (windows)
"let g:tagbar_ctags_bin = 'C:\ctags-2021-04-24_p5.9.20210418.0-8-g681a8d5f-x64\ctags.exe'
"Set ctags path (linux)
"let g:tagbar_ctags_bin = 'C:\ctags-2021-04-24_p5.9.20210418.0-8-g681a8d5f-x64\ctags.exe'
"Autofocus on tagbar open
let g:tagbar_autofocus = 1


"Configure indentline
let g:indentLine_char_list = ['┊']


"Configure nerdtree
"Arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Open in current directory
autocmd BufEnter * silent! lcd %:p:h

"Automatically close if nerdtree is only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Autorefresh on tree focus
function! NERDTreeRefresh()
    if &filetype == "nerdtree"
        silent exe substitute(mapcheck("R"), "<CR>", "", "")
    endif
endfunction

autocmd BufEnter * call NERDTreeRefresh()


"Configure nerd commenter
filetype plugin on


"Configure git signify
"Configure signs
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

"No numbers
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1


"Configure nerdtree-git-plugin
"Use custom maps
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
"Path to git
let g:NERDTreeGitStatusGitBinPath = 'git'
"Show clean status
let g:NERDTreeGitStatusShowClean = 1


"Configure CoC
" Set nvm node path for CoC to work correctly
let g:coc_node_path = '/home/paglobal/.config/nvm/versions/node/v16.16.0/bin/node'

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use L to show documentation in preview window.
nnoremap <silent> L :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
"nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
"nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
"nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"xmap if <Plug>(coc-funcobj-i)
"omap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap af <Plug>(coc-funcobj-a)
"xmap ic <Plug>(coc-classobj-i)
"omap ic <Plug>(coc-classobj-i)
"xmap ac <Plug>(coc-classobj-a)
"omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


"Disable indentline in markdown and json files
let g:indentLine_fileTypeExclude = ['json', 'markdown']


"Configure code folding
"augroup vimrc
  "au BufReadPre * setlocal foldmethod=indent
  "au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END


"No line wrapping
set nowrap


"Colorscheme settings
syntax on


"Copy to system clipboard
set clipboard^=unnamed,unnamedplus


"No error sound
set noerrorbells


"No visual bell
set novisualbell


"Indent settings
set tabstop=2 softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent


"Search highlighting
set incsearch
set hlsearch


"Set cursor line
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=DarkGray ctermfg=white guibg=darkred guifg=white


"Encoding (for vim only)
"set encoding=utf-8


"Windows 'compatibility'
set nocompatible

"Relative numbering
set number relativenumber


"Remove all trailing whitespace with F5
"nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>


"Fix 'backspace not working'
set backspace=indent,eol,start


"Set wildmenu
set wildmenu
set wildmode=list:longest,full


"Configure theming
"Enable true color support
set termguicolors

"Set colorscheme
colorscheme gruvbox

"Set dark mode
set background=dark


"Configure word wrap
"Define toggle word wrap function
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    nnoremap <buffer> <silent> <expr> k v:count == 0 ? 'gk' : 'k'
    nnoremap <buffer> <silent> <expr> j v:count == 0 ? 'gj' : 'j'
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction

"Call toggle word wrap function
call ToggleWrap()


"ALE statusline configuration
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction


"Set statusline
set statusline=
set statusline+=%#Pmenu#
set statusline+=\ %M "Changes prompt with plus sign
set statusline+=\ %y "File type
set statusline+=\ %r "Read only prompt
set statusline+=\ %F "Full file path
set statusline+=%=  "Right side settings
set statusline+=%#StatusLineTerm#
set statusline+=\ %{LinterStatus()} "ALE errors
set statusline+=\ %c:%l/%L "Current line/No of lines
set statusline+=\ %p%% "Line percentage
set statusline+=\ [%n] "Buffer number
