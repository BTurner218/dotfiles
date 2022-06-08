local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('folke/tokyonight.nvim', {branch = 'main'})
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('neovim/nvim-lspconfig')

vim.call('plug#end')

require("core/keymaps")
require("core/options")
require("core/colors")
require("plugins/lualine")
require("plugins/nvim-tree")
require("plugins/nvim-treesitter")
require("plugins/nvim-lspconfig")

