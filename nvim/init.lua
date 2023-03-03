local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('folke/tokyonight.nvim', {branch = 'main'})
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')
Plug('kyazdani42/nvim-tree.lua')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug ('akinsho/toggleterm.nvim', {branch = 'main'})
Plug('airblade/vim-gitgutter')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('fatih/vim-go', {['do'] = ':GoUpdateBinaries'})
Plug('sbdchd/neoformat')
Plug('saadparwaiz1/cmp_luasnip')
Plug('L3MON4D3/LuaSnip')
Plug('tpope/vim-fugitive')
Plug('tpope/vim-commentary')
Plug('tpope/vim-surround')
Plug('lukas-reineke/indent-blankline.nvim')
Plug('phaazon/hop.nvim')
Plug('prettier/vim-prettier', {['do'] = 'yarn install --frozen-lockfile --production'})
Plug('github/copilot.vim')
Plug('mbbill/undotree')

-- lsp-zero
-- LSP Support
Plug('neovim/nvim-lspconfig')              -- Required
Plug('williamboman/mason.nvim')            --Optional
Plug('williamboman/mason-lspconfig.nvim')  -- Optional

-- Autocompletion Engine
Plug('hrsh7th/nvim-cmp')         -- Required
Plug('hrsh7th/cmp-nvim-lsp')     -- Required
Plug('hrsh7th/cmp-buffer')       -- Optional
Plug('hrsh7th/cmp-path')         -- Optional
Plug('saadparwaiz1/cmp_luasnip') -- Optional
Plug('hrsh7th/cmp-nvim-lua')     -- Optional

--  Snippets
Plug('L3MON4D3/LuaSnip')             -- Required
Plug('rafamadriz/friendly-snippets') -- Optional

Plug('VonHeikemen/lsp-zero.nvim', {branch = 'v1.x'})


vim.call('plug#end')

require("core/keymaps")
require("core/options")
require("core/colors")
require("plugins/lualine")
require("plugins/nvim-tree")
require("plugins/nvim-treesitter")
require("plugins/toggleterm")
require("plugins/neoformat")
require('plugins/hop')
require('plugins/vim-prettier')
require('plugins/undotree')
require('plugins/lsp-zero')

