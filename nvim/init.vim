" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')

" Add plugins here between plug#begin and plug#end

call plug#end()

" Basic settings
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
filetype plugin indent on
set clipboard=unnamedplus
colorscheme default

" Make background transparent
hi Normal ctermbg=none guibg=none
hi NonText ctermbg=none guibg=none
hi LineNr ctermbg=none guibg=none
hi SignColumn ctermbg=none guibg=none
hi VertSplit ctermbg=none guibg=none
hi StatusLine ctermbg=none guibg=none
hi StatusLineNC ctermbg=none guibg=none
hi Pmenu ctermbg=none guibg=none
hi PmenuSel ctermbg=none guibg=none
hi TelescopeNormal ctermbg=none guibg=none  " if using telescope


call plug#begin('~/.local/share/nvim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Autocomplete and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Treesitter for syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" Treesitter config (better syntax highlighting)
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "python", "javascript", "typescript", "tsx" },
  highlight = {
    enable = true,
  },
}
EOF

" CoC basic settings
let g:coc_global_extensions = ['coc-clangd', 'coc-pyright', 'coc-tsserver']

