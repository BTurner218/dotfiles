vim.keymap.set("n", "<SPACE>", "<Nop>")
vim.g.mapleader = ' '
vim.keymap.set("i", "jk", "<Esc>")

-- nvim-tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>")
