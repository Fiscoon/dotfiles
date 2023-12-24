" Map leader key
let mapleader = ","

" Useful aliases
command! Q  wqa

call plug#begin()
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'vimwiki/vimwiki'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'akinsho/toggleterm.nvim', { 'tag' : '*' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
call plug#end()

set number
autocmd VimEnter * NvimTreeOpen 

lua << END
require("bufferline").setup{}
require('lualine').setup()
require('telescope').setup()
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
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

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
nnoremap k gk
nnoremap j gj

