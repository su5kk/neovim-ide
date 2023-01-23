local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

---- Navigate buffers
-- keymap("n", "<leader>l", ":bnext<CR>", opts)
-- keymap("n", "<leader>h", ":bprevious<CR>", opts)
-- keymap("n", "<leader>w", ":bd<CR>", opts)

-- Telescope
-- keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
-- keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
-- keymap("n", "<leader>lg", ":Telescope live_grep<CR>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- Gitsigns
keymap("n", "<leader>sd", ":Gitsigns diffthis<CR>", opts)

-- Go
keymap("n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>B", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", opts)
keymap("n", "<leader>c", ":lua require('dap').continue()<CR>", opts)
keymap("n", "<leader>fe", ":lua require('dapui').eval()<CR>", opts)
keymap("n", "<leader>so", ":lua require('dap').step_over()<CR>", opts)
keymap("n", "<leader>si", ":lua require('dap').step_into()<CR>", opts)
keymap("n", "<leader>ss", ":lua require('dap').step_out()<CR>", opts)

-- Toggle terminal
keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)
