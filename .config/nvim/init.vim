call plug#begin()
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag' : '*' }
Plug 'akinsho/toggleterm.nvim', { 'tag' : '*' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'vimwiki/vimwiki'
call plug#end()

lua << END
require("keymaps")
require("options")
require("plugins")
END
