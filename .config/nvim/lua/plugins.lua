require("bufferline").setup{}
require('lualine').setup()
require('telescope').setup()
require("toggleterm").setup{
	open_mapping = [[<c-t>]],
	persist_size = false,
}
require("catppuccin").setup({
    integrations = {
        cmp = true,
        gitsigns = true,
    	nvimtree = true,
        treesitter = true,
    },
})

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
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

