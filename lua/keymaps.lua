local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Movements
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)

-- Indenting
map({"v", "n"}, "+", "><CR>")
map({"v", "n"}, "-", "<<CR>")

-- Quick Accesses
map({"i", "n"}, "<C-a>", "<Esc>ggVG", opts)
map("n", "<leader>so", "<cmd>so<CR>", opts)

-- Modes
map("i", "jk", "<Esc>", opts)

-- Actions
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>Q", "<cmd>q!<CR>", opts)
map("n", "<leader><C-q>", "<cmd>qa<CR>", opts)
map("n", "<leader><C-Q>", "<cmd>qa!<CR>", opts)

-- Files Navigation
local pOpts = vim.tbl_extend("force", opts, { desc = "View project files"})
map("n", "<leader>pv", "<cmd>Ex<CR>", pOpts)
