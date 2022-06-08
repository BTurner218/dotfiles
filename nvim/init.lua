local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('folke/tokyonight.nvim', {branch = 'main'})
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('neovim/nvim-lspconfig')
Plug ('akinsho/toggleterm.nvim', {tag = 'v1.*'})
Plug('airblade/vim-gitgutter')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('darrikonn/vim-gofmt')
Plug('sbdchd/neoformat')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')

vim.call('plug#end')

require("core/keymaps")
require("core/options")
require("core/colors")
require("plugins/lualine")
require("plugins/nvim-tree")
require("plugins/nvim-treesitter")
require("plugins/nvim-lspconfig")
require("plugins/toggleterm")
require("plugins/neoformat")
require("plugins/nvim-cmp")

