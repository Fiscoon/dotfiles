call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
" I also can use fzf here. Look into it.
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()


" open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']


lua << END
require("bufferline").setup()
require('lualine').setup()
require('telescope').setup()
require("toggleterm").setup()
END


let g:catppuccin_flavour = "latte"

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
