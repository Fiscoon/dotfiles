call plug#begin()
Plug 'preservim/nerdtree'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
" I also can use fzf here. Look into it.
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'akinsho/toggleterm.nvim', { 'tag' : '*' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

set number

" open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }                         

let g:NERDTreeIgnore = ['^node_modules$']

lua << END
require("bufferline").setup()
require('lualine').setup()
-- require('telescope').setup()
require("toggleterm").setup{
	open_mapping = [[<c-t>]],
	persist_size = false,
}
require("catppuccin").setup()
require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
  ensure_installed = {'org', 'c', 'lua', 'go'},
}
require('gitsigns').setup()
require("ibl").setup()
END


let g:catppuccin_flavour = "latte"
colorscheme catppuccin

nnoremap 1 :lua require"bufferline".go_to(1)<CR>
nnoremap 2 :lua require"bufferline".go_to(2)<CR>
nnoremap 3 :lua require"bufferline".go_to(3)<CR>
nnoremap 4 :lua require"bufferline".go_to(4)<CR>
nnoremap 5 :lua require"bufferline".go_to(5)<CR>
nnoremap 6 :lua require"bufferline".go_to(6)<CR>
nnoremap 7 :lua require"bufferline".go_to(7)<CR>
nnoremap 8 :lua require"bufferline".go_to(8)<CR>
nnoremap 9 :lua require"bufferline".go_to(9)<CR>
nnoremap <silent> gd :BufferLinePickClose<CR>

