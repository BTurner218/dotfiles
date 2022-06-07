local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('folke/tokyonight.nvim', {branch = 'main'})
Plug('nvim-lualine/lualine.nvim')
Plug('kyazdani42/nvim-web-devicons')

vim.call('plug#end')

require("core/keymaps")
require("core/options")
require("core/colors")
require("plugins/lualine")
