"Leader key mapping
let mapleader = " "

"Leader key Mappings
"Switch between splits using spacebar + h,j,k,l
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"Signify toggle
nnoremap <leader>ts :SignifyToggle<CR>

"Signify toggle highlight
nnoremap <leader>th :SignifyToggleHighlight<CR>

"Save and quit
nnoremap <leader>sq :wq<CR>

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
nnoremap <leader>ll :Limelight!!<CR>

"Show undotree with spacebar + u
nnoremap <leader>u :UndotreeToggle<CR>

"Use vifm to open file in current buffer
nnoremap <leader>ev :EditVifm .<CR>

"Use vifm to open file in new tab
nnoremap <leader>tv :TabVifm .<CR>

"Use vifm to open file in vsplit
nnoremap <leader>vv :VsplitVifm .<CR>

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
nnoremap <leader>vt :vertical terminal<CR>

"New tab
nnoremap <leader>tb :tabnew<CR>

"Previous tab
nnoremap [t :tabprevious<CR>

"Next buffer
nnoremap ]t :tabnext<CR>

"Cycle through buffers
nnoremap <leader>b :buffers<CR>:buffer<Space>

"Previous buffer
nnoremap [b :bprevious<CR>

"Next tab
nnoremap ]b :bnext<CR>

"Global search and replace
nnoremap <leader>gs :%s///gc

"Markdown preview
nnoremap <leader>m :InstantMarkdownPreview<CR>

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
map <F1> :set termguicolors<CR>
map <F2> :set notermguicolors<CR>
map <F3> :set background=light<CR>
map <F4> :set background=dark<CR>
map <F6> :colorscheme<space>
"map <F6> :colorscheme ron<CR>
"map <F7> :colorscheme gruvbox<CR>
"map <F8> :colorscheme PaperColor<CR>


"ALE Setup
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'css': ['prettier', 'stylelint'],
      \   'scss': ['prettier', 'stylelint'],
      \   'javascript': ['prettier', 'eslint'],
      \   'typescript': ['prettier', 'eslint'],
      \   'html': ['prettier'],
      \   'python': ['black', 'autopep8'],
      \   'c++': ['clang-format', 'clangtidy'],
      \   'rust': ['rustfmt'],
      \}

let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \   'html': ['htmlhint'],
      \   'css': ['stylelint'],
      \   'scss': ['stylelint'],
      \   'python': ['flake8', 'pylint'],
      \   'c++': ['clangd', 'cc'],
      \   'rust': ['analyzer', 'rls'],
      \}

"Configure flake8 and pylint to be faster by setting paths to executables
let g:ale_python_flake8_executable ='C:\\Users\\User\\AppData\\Local\\Programs\\Python\\Python37\\Lib\\site-packages'
let g:ale_python_flake8_use_global = 1
let g:ale_python_pylint_executable ='C:\\Users\\User\\AppData\\Local\\Programs\\Python\\Python37\\Lib\\site-packages'
let g:ale_python_pylint_use_global = 1
let g:ale_virtualenv_dir_names = []

"Other ALE options setup
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
let g:ale_disable_lsp = 1
let g:ale_set_highlights = 0


"Configure vim-polyglot
"Disable vim sensible
"let g:polyglot_disabled = ['sensible']


"Plugin setup with vim-plug
if empty(glob('~/vimfiles/autoload/plug.vim'))
  silent !curl -fLo ~/vimfiles/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/vimfiles/plugged')

"Undo tree
Plug 'mbbill/undotree'

"Coc intellisense
Plug 'neoclide/coc.nvim'

"Auto pair for symbols
Plug 'jiangmiao/auto-pairs'

"Sneak plugin
Plug 'justinmk/vim-sneak'

"Emmet
Plug 'mattn/emmet-vim'

"Git signify
Plug 'mhinz/vim-signify'

"Nerd commenter for commenting
Plug 'preservim/nerdcommenter'

"Vifm
Plug 'vifm/vifm.vim'

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

"Markdown preview
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

"Class/module browser
Plug 'preservim/tagbar'

"Better syntax highlighting
Plug 'sheerun/vim-polyglot'

"Paint css colors with the real color
Plug 'lilydjwg/colorizer'

"Repeat plugin commands with . (vim surround)
Plug 'tpope/vim-repeat'

"Official rust vim plugin
Plug 'rust-lang/rust.vim'

"Color schemes
"Gruvbox
Plug 'morhetz/gruvbox'
"Papercolor theme
Plug 'NLKNguyen/papercolor-theme'

call plug#end()


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
"Set ctags path
let g:tagbar_ctags_bin = '~/ctags-2020-12-01_p5.9.20201129.0-44-ge52cf4a7-x64/ctags.exe'
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


"Configure sneak to use leader + f
map <leader>f <Plug>Sneak_s
map <leader>F <Plug>Sneak_S

"Configure markdown previews
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:indentLine_fileTypeExclude = ['json', 'markdown']


"Configure code folding
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END


"No line wrapping
set nowrap


"Colorscheme settings
syntax on


"Copy to system clipboard
set clipboard=unnamed


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


"Encoding
set encoding=utf-8


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
