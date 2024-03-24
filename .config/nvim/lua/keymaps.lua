local map = function(modes, lhs, rhs, opts)
    local options = { silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    if type(modes) == "string" then
        modes = { modes }
    end
    for _, mode in ipairs(modes) do
        vim.keymap.set(mode, lhs, rhs, options)
    end
end

-- Map leader key
vim.g.mapleader = ","

-- quit
map("n", "<leader>qq", ":qa<cr>", { desc = "Quit all" })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- Buffers
map("n", "<leader>1", ":BufferLineGoToBuffer 1<cr>", { desc = "Go to first buffer" })
map("n", "<leader>2", ":BufferLineGoToBuffer 2<cr>", { desc = "Go to second buffer" })
map("n", "<leader>3", ":BufferLineGoToBuffer 3<cr>", { desc = "Go to third buffer" })
map("n", "<leader>4", ":BufferLineGoToBuffer 4<cr>", { desc = "Go to fourth buffer" })
map("n", "<leader>5", ":BufferLineGoToBuffer 5<cr>", { desc = "Go to fifth buffer" })
map("n", "<leader>6", ":BufferLineGoToBuffer 6<cr>", { desc = "Go to sixth buffer" })
map("n", "<leader>7", ":BufferLineGoToBuffer 7<cr>", { desc = "Go to seventh buffer" })
map("n", "<leader>8", ":BufferLineGoToBuffer 8<cr>", { desc = "Go to eighth buffer" })
map("n", "<leader>9", ":BufferLineGoToBuffer 9<cr>", { desc = "Go to ninth buffer" })
map("n", "gd", ":BufferLinePickClose<cr>", { desc = "Close selected buffer" })

-- Telescope
map("n", "<leader>ff", function()
    require("telescope_pickers").prettyFilesPicker({ picker = "find_files" })
end, { desc = "Fuzzy find files" })
-- map("n", "<leader>fs", ":Telescope live_grep<cr>", { desc = "Find string in cwd" })
map("n", "<leader>fg", function()
    require("telescope_pickers").prettyGrepPicker({ picker = "live_grep" })
end, { desc = "Find string in cwd" })
-- map("n", "<leader>fc", ":Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
map("n", "<leader>fc", function()
    require("telescope_pickers").prettyGrepPicker({ picker = "grep_string" })
end, { desc = "Find string under cursor in cwd" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- Code/LSP
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "<leader>cl", ":LspInfo<cr>", { desc = "LSP Info" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gf", function()
    require("telescope.builtin").lsp_definitions({ reuse_win = true })
end, { desc = "Goto Definition" })
map("n", "gr", ":Telescope lsp_references<cr>", { desc = "Goto References" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
map("n", "gI", function()
    require("telescope.builtin").lsp_implementations({ reuse_win = true })
end, { desc = "Goto Implementation" })
map("n", "gy", function()
    require("telescope.builtin").lsp_type_definitions({ reuse_win = true })
end, { desc = "Goto Type Definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "gK", vim.lsp.buf.signature_help, { desc = "Signature Help" })

