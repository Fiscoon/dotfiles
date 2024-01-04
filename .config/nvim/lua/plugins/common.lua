return{
    { 
        'nvim-tree/nvim-tree.lua',
        lazy = false,
        init = function()
            vim.api.nvim_create_autocmd("VimEnter", {
                command = "NvimTreeOpen",
            })
        end,
        config = function()
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
        end,
    },
    { 
        'nvim-lualine/lualine.nvim',
        init = function()
            require("lualine").setup()
        end,
    },
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
    {
        'akinsho/bufferline.nvim', 
        version = '*', 
        dependencies = 'nvim-tree/nvim-web-devicons',
        init = function()
            require("bufferline").setup()
        end,
    },
    {'akinsho/toggleterm.nvim', version = '*', config = true},
    { 
        'catppuccin/nvim', 
        name = 'catppuccin', 
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                integrations = {
                    cmp = true,
                    gitsigns = true,
                	nvimtree = true,
                    treesitter = true,
                },
            })
        end,
    },
    { 
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSUpdateSync" },
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "bash",
                "bicep",
                "gitignore",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "html",
                "http",
                "json",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "regex",
                "templ",
                "toml",
                "yaml",
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
    {
        'lewis6991/gitsigns.nvim',
        init = function()
            require("gitsigns").setup()
        end,
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        init = function()
            require("ibl").setup()
        end,
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        init = function()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>f', builtin.find_files, {})
            vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
        end,
    },
    {
        'vimwiki/vimwiki',
        lazy = false,

        init = function()
            vim.g.vimwiki_list = {
                {
                    path = '~/docs/vimwiki',
                    syntax = 'default',
                    ext = '.wiki',
                },
            }
        end,
    }
}
